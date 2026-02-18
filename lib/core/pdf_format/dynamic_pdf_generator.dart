import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:mbs_crm/core/constants/png_image_constants.dart';
import 'package:mbs_crm/core/pdf_format/generate_pdf.dart';
import 'package:mbs_crm/core/pdf_format/pdf_table_extractor.dart';
import 'package:mbs_crm/core/pdf_format/pdf_table_renderer.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/infrastructure/form_files_group_dto/form_file_group_dto.dart';
import 'package:mbs_crm/presentation/dynamic_form/widgets/dynamic_form_helper.dart';
import 'package:pdf/pdf.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/widgets.dart' as pw;

class DynamicPdfGenerator {
  static Future<Uint8List> buildPdf(
    Map<String, dynamic> json,
    List<FormFileGroupDTO>? formFiles,
    DynamicFormDTO schema,
  ) async {
    final pdf = pw.Document();
    final logoBytes = await rootBundle.load(PngImageConstants.mbsLogoWithTitle);
    final logoImage = pw.MemoryImage(logoBytes.buffer.asUint8List());

    final formTitle = schema.title ?? 'Inspection Report';
    final questionMap = buildQuestionLabelMap(schema);

    final tables = extractTablesFromJson(schema: schema, json: json);
    final Map<String, pw.MemoryImage> imageCache = {};
    for (final group in formFiles ?? []) {
      for (final file in group.files ?? []) {
        final url = file.url;
        if (url != null && !imageCache.containsKey(url)) {
          final img = await loadPdfImage(url);
          if (img != null) imageCache[url] = img;
        }
      }
    }

    /// Field-level attachments
    Future<void> extractFieldImages(Map<String, dynamic> map) async {
      for (final value in map.values) {
        if (value is Map && value['files'] is List) {
          for (final f in value['files']) {
            final url = f['url'];
            if (url != null && !imageCache.containsKey(url)) {
              final img = await loadPdfImage(url);
              if (img != null) imageCache[url] = img;
            }
          }
        }
        if (value is Map<String, dynamic>) {
          await extractFieldImages(value);
        }
      }
    }

    await extractFieldImages(json);

    /// ---------------- POTRAIT CONTENT ----------------
    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(20),
        header: (_) => _header(logo: logoImage, title: formTitle),
        build: (_) {
          final widgets = <pw.Widget>[];

          widgets.add(pw.SizedBox(height: 10));

          final projectInfo =
              json['project_information'] as Map<String, dynamic>? ?? {};
          if (hasData(projectInfo)) {
            widgets.add(_projectInfo(projectInfo));
            widgets.add(pw.SizedBox(height: 15));
          }

          /// Portrait tables
          for (final table in tables.where((t) => t.flatColumns.length <= 6)) {
            widgets.add(
              _sectionTitle(table.tableKey.replaceAll('_', ' ').toUpperCase()),
            );
            widgets.add(pw.SizedBox(height: 8));
            widgets.add(renderPdfTable(table));
            widgets.add(pw.SizedBox(height: 15));
          }

          /// Other sections
          // void addSection(String title, Map<String, dynamic>? data) {
          for (FormSection section in schema.sections ?? []) {
            if (section.key == 'project_information') {
              continue;
            }
            if (section.key == 'instrument_details') {
              continue;
            }

            final sectionKey = section.key ?? slugify(section.title);
            final sectionData = json[sectionKey];

            if (!hasData(sectionData)) continue;

            widgets.add(
              _keyValueSection(
                section.title ?? '',
                sectionData,
                questionMap,
                imageCache,
                formFiles,
              ),
            );

            widgets.add(pw.SizedBox(height: 15));
          }

          final globalFiles = formFiles
              ?.where((g) => g.optionType == 'global')
              .toList();

          if (globalFiles != null && globalFiles.isNotEmpty) {
            widgets.add(pw.SizedBox(height: 20));
            widgets.add(_sectionTitle('ATTACHMENTS'));
            widgets.add(pw.SizedBox(height: 10));

            for (final group in globalFiles) {
              final files = group.files ?? [];
              if (files.isEmpty) continue;

              widgets.add(
                pw.Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final file in files)
                      if (file.url != null && imageCache.containsKey(file.url))
                        pw.Image(
                          imageCache[file.url!]!,
                          height: 200,
                          width: 200,
                          fit: pw.BoxFit.fill,
                        ),
                  ],
                ),
              );
            }
          }
          return widgets;
        },
      ),
    );

    /// ---------------- LANDSCAPE TABLES ----------------
    for (final table in tables.where((t) => t.flatColumns.length > 6)) {
      pdf.addPage(
        pw.MultiPage(
          pageFormat: PdfPageFormat.a4.landscape,
          margin: const pw.EdgeInsets.all(20),
          header: (_) => _header(logo: logoImage, title: formTitle),
          build: (_) => [
            _sectionTitle(table.tableKey.replaceAll('_', ' ').toUpperCase()),
            pw.SizedBox(height: 10),
            renderPdfTable(table),
          ],
        ),
      );
    }

    return pdf.save();
  }

  // ---------- SIGNATURE ----------
  static pw.Widget signatureWidget(String base64) {
    try {
      final cleanBase64 = base64
          .replaceAll('\n', '')
          .replaceAll('\r', '')
          .replaceAll(' ', '');

      final bytes = base64Decode(cleanBase64);

      return pw.Padding(
        padding: const pw.EdgeInsets.only(top: 6),
        child: pw.Container(
          decoration: pw.BoxDecoration(border: pw.Border.all(width: 0.5)),
          padding: const pw.EdgeInsets.all(4),
          child: pw.Image(
            pw.MemoryImage(bytes),
            height: 80,
            fit: pw.BoxFit.contain,
          ),
        ),
      );
    } catch (e) {
      debugPrint("Signature decode failed: $e");
      return pw.SizedBox();
    }
  }

  // ----------------------------- SECTION CONTROLLER -----------------------------
  static void addSection({
    required List<pw.Widget> widgets,
    required String? title,
    required dynamic data,
    required pw.Widget Function() content,
  }) {
    if (!hasNonEmptyValue(data)) return;

    widgets.add(pw.SizedBox(height: 15));

    if (title != null) {
      widgets.add(_sectionTitle(title));
      widgets.add(pw.SizedBox(height: 15));
    }
    widgets.add(content());
  }

  // ----------------------------- HEADER -----------------------------

  static pw.Widget _header({
    required pw.ImageProvider logo,
    required String title,
  }) {
    return pw.Column(
      children: [
        pw.Row(
          children: [
            pw.Container(
              width: 120,
              height: 60,
              alignment: pw.Alignment.centerLeft,
              child: pw.Image(logo, fit: pw.BoxFit.contain),
            ),
            pw.Expanded(
              child: pw.Center(
                child: pw.Text(
                  title,
                  style: pw.TextStyle(
                    fontSize: 16,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        pw.SizedBox(height: 15),
      ],
    );
  }

  // ----------------------------- PROJECT INFO -----------------------------
  static pw.Widget _projectInfo(Map<String, dynamic> data) {
    return pw.Table(
      border: pw.TableBorder.all(),
      children: [
        pw.TableRow(
          children: [
            _cellRich('Client', data['client']),
            _cellRich('Site', data['site']),
            _cellRich('Contract No', data['contract_no']),
          ],
        ),
      ],
    );
  }

  // ----------------------------- EQUIPMENT TABLE -----------------------------

  static List<Map<String, dynamic>> normalizeTable(
    Map<String, dynamic>? table,
  ) {
    if (table == null || table.isEmpty) return [];

    return table.values.whereType<Map<String, dynamic>>().toList();
  }

  // ----------------------------- SMALL HELPERS -----------------------------

  static pw.Widget _sectionTitle(String text) {
    return pw.Text(
      text,
      style: pw.TextStyle(fontSize: 11, fontWeight: pw.FontWeight.bold),
    );
  }

  static pw.Widget _cellRich(String title, dynamic value) {
    return pw.Padding(
      padding: const pw.EdgeInsets.all(6),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            '$title:',
            style: pw.TextStyle(fontSize: 9, fontWeight: pw.FontWeight.bold),
          ),
          pw.SizedBox(height: 2),
          pw.Text(
            value?.toString() ?? '',
            style: const pw.TextStyle(fontSize: 9),
          ),
        ],
      ),
    );
  }

  static pw.Widget _keyValueSection(
    String title,
    Map<String, dynamic> data,
    Map<String, String> questionMap,
    Map<String, pw.MemoryImage> imageCache,
    List<FormFileGroupDTO>? formFiles,
  ) {
    int index = 1;

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        _sectionTitle(title),
        pw.SizedBox(height: 15),
        ...data.entries.map((e) {
          final rawValue = e.value;
          final dropdownFiles =
              formFiles
                  ?.where((g) {
                    if (g.optionType != 'dropdown') return false;
                    final slug = g.optionSlug ?? '';
                    return slug == '${e.key}_attachments';
                  })
                  .expand((g) => g.files ?? [])
                  .toList() ??
              [];

          if (!hasData(rawValue)) return pw.SizedBox();

          final questionText = questionMap[e.key] ?? e.key.replaceAll('_', ' ');

          final isSignature =
              e.key.toLowerCase().contains('signature') &&
              rawValue is String &&
              rawValue.isNotEmpty;

          if (kDebugMode) {
            print(
              "IsSignature---> ${e.key.toLowerCase().contains('signature')}",
            );
          }

          final questionWidget = pw.Padding(
            padding: const pw.EdgeInsets.only(bottom: 10),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                if (questionText.isNotEmpty)
                  pw.Text(
                    '${index++}. $questionText',
                    style: pw.TextStyle(
                      fontSize: 9,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                pw.SizedBox(height: 4),

                /// ----------------------------- ANSWER STRUCTURE { answer, reason } -----------------------------
                if (rawValue is Map && rawValue.containsKey('answer')) ...[
                  pw.Text(
                    'Ans: ${DynamicFormHelper.answerToValue(rawValue['answer'])}',
                    style: const pw.TextStyle(fontSize: 9),
                  ),
                  if (hasData(rawValue['reason'])) ...[
                    pw.SizedBox(height: 2),
                    pw.Text(
                      'Reason: ${rawValue['reason']}',
                      style: const pw.TextStyle(fontSize: 8),
                    ),
                  ],

                  /// -------- FIELD ATTACHMENTS --------
                  /// -------- FIELD ATTACHMENTS (QUESTION LEVEL) --------

                  // 🔹 POINT 4: render dropdown attachments under the question
                  if (dropdownFiles.isNotEmpty) ...[
                    pw.SizedBox(height: 6),
                    pw.Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: [
                        for (final file in dropdownFiles.take(6))
                          if (file.url != null &&
                              imageCache.containsKey(file.url))
                            pw.Container(
                              width: 150,
                              height: 150,
                              child: pw.Image(
                                imageCache[file.url!]!,
                                fit: pw.BoxFit.fill,
                              ),
                            ),
                      ],
                    ),
                  ],
                ] else if (isSignature)
                  signatureWidget(rawValue)
                /// ----------------------------- SIMPLE VALUE -----------------------------
                else
                  pw.Text(
                    '${questionText.isNotEmpty ? "Ans: " : ""}${rawValue.toString()}',
                    style: const pw.TextStyle(fontSize: 9),
                  ),
              ],
            ),
          );

          return questionWidget;
        }),
        pw.SizedBox(height: 12),
      ],
    );
  }

  static Future<pw.MemoryImage?> loadPdfImage(String url) async {
    try {
      Uint8List bytes;

      if (url.startsWith('http')) {
        final client = HttpClient();
        final request = await client.getUrl(Uri.parse(url));
        final response = await request.close();
        bytes = await consolidateHttpClientResponseBytes(response);
      } else {
        final file = File(url);
        bytes = await file.readAsBytes();
      }

      return pw.MemoryImage(bytes);
    } catch (_) {
      return null;
    }
  }

  static String slugify(String? text) {
    if (text == null || text.isEmpty) return '';

    return text
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), '_')
        .replaceAll(RegExp(r'_+'), '_')
        .replaceAll(RegExp(r'^_|_$'), '');
  }
}
