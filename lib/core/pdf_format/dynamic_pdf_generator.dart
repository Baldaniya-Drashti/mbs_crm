import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
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
    print("PDF FormFiles----> $formFiles");
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

    /// ---------------- PORTRAIT CONTENT ----------------
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
          void addSection(String title, Map<String, dynamic>? data) {
            if (!hasData(data)) return;

            widgets.add(
              _keyValueSection(
                title,
                data!,
                questionMap,
                imageCache,
                formFiles,
              ),
            );
          }

          addSection(
            "Inspection Grade",
            json['inspection_grade'] as Map<String, dynamic>?,
          );
          addSection("Equipment", json['equipment'] as Map<String, dynamic>?);
          addSection(
            "Installation",
            json['installation'] as Map<String, dynamic>?,
          );
          addSection(
            "Environment",
            json['environment'] as Map<String, dynamic>?,
          );
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
          final inspectedBy =
              json['inspected_by'] as Map<String, dynamic>? ?? {};
          if (hasData(inspectedBy)) {
            widgets.add(pw.SizedBox(height: 15));
            widgets.add(_inspectedBy(inspectedBy));
            widgets.add(pw.SizedBox(height: 15));
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
      final bytes = base64Decode(base64);
      return pw.Padding(
        padding: const pw.EdgeInsets.only(top: 5),
        child: pw.Image(pw.MemoryImage(bytes), height: 80),
      );
    } catch (_) {
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

  static pw.Widget _inspectedBy(Map<String, dynamic> data) {
    return pw.Table(
      border: pw.TableBorder.all(),
      children: [
        pw.TableRow(
          children: [
            if (data['calibration_due_date'] != null &&
                data['calibration_due_date'] != "")
              _cellRich(
                'Calibration Due Date',
                DateFormat(
                  'dd/Mm/yyyy',
                ).format(DateTime.parse(data['calibration_due_date'])),
              ),
            _cellRich('Inspector Name', data['inspector_name']),
            _cellRich(
              "Inspector Compex Number",
              data['inspector_compex_number'],
            ),
            if (data['inspection_date'] != null &&
                data['inspection_date'] != "")
              _cellRich(
                "Inspection Date",
                DateFormat(
                  'dd/Mm/yyyy',
                ).format(DateTime.parse(data['inspection_date'])),
              ),
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

          print("Question DropDownFiles---> $dropdownFiles");
          print("Question FormFiles---> ${jsonEncode(formFiles)}");
          if (!hasData(rawValue)) return pw.SizedBox();

          final questionText = questionMap[e.key] ?? e.key.replaceAll('_', ' ');

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
                ]
                /// ----------------------------- SIMPLE VALUE -----------------------------
                else if (e.key.toLowerCase() != 'signature')
                  pw.Text(
                    '${questionText.isNotEmpty ? "Ans: " : ""}${rawValue.toString()}',
                    style: const pw.TextStyle(fontSize: 9),
                  ),

                if (e.key.toLowerCase() == 'signature' && rawValue is String)
                  signatureWidget(rawValue),
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
}
