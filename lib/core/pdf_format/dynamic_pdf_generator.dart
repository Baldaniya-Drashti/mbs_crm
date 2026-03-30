import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:mbs_crm/core/constants/png_image_constants.dart';
import 'package:mbs_crm/core/pdf_format/generate_pdf.dart';
import 'package:mbs_crm/core/pdf_format/pdf_table_extractor.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/attachment_file_dto/attachment_file_dto.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/infrastructure/form_files_group_dto/form_file_group_dto.dart';
import 'package:mbs_crm/presentation/common/utils/date_time_format.dart';
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

    final Map<String, pw.MemoryImage> imageCache = {};
    for (FormFileGroupDTO group in formFiles ?? []) {
      for (AttachmentFileDTO file in group.files ?? []) {
        final url = file.url;
        if (url != null && !imageCache.containsKey(url)) {
          final img = await loadPdfImage(url);
          if (img != null) imageCache[url] = img;
        }
      }
    }

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

    // ---------------- POTRAIT CONTENT ---------------- //
    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(20),
        header: (context) => _header(
          context: context,
          logo: logoImage,
          title: formTitle,

          projectInfo: json['project_information'],
        ),
        build: (_) {
          final widgets = <pw.Widget>[];

          widgets.add(pw.SizedBox(height: 10));
          if (json['project_information'] is Map<String, dynamic>) {
            widgets.add(_projectInfo(json['project_information']));
            widgets.add(pw.SizedBox(height: 15));
          }

          // ALWAYS SHOW INSPECTED BY SECOND //
          if (json['inspected_by'] is Map<String, dynamic>) {
            widgets.add(_inspectedBy(json['inspected_by']));
            widgets.add(pw.SizedBox(height: 15));
          }
          bool firstSectionStarted = false;
          String? previousSectionKey;

          for (final entry in json.entries) {
            final sectionKey = entry.key;
            final sectionData = entry.value;

            // Skip first page sections //
            if (sectionKey == "project_information" ||
                sectionKey == "inspected_by") {
              continue;
            }

            if (!hasData(sectionData)) continue;

            if (!firstSectionStarted) {
              widgets.add(pw.NewPage());
              firstSectionStarted = true;
            } else if (sectionKey == "inspection_grade") {
              widgets.add(pw.NewPage());
            } else if (previousSectionKey != "inspection_grade") {
              widgets.add(pw.NewPage());
            }

            // ----- INSTRUMENT DETAILS ----- //

            if (sectionKey == "instrument_details" &&
                sectionData is Map<String, dynamic>) {
              final groupedRows = groupInstrumentRows(
                sectionData,
                "instrument_table",
              );

              final instrumentLabelMap = buildInstrumentLabelMap(schema);

              final instrumentWidgets = <pw.Widget>[];

              for (final entry in groupedRows.entries) {
                final instrumentNumber = entry.key + 1;
                final rowData = entry.value;

                final validEntries = rowData.entries.where((e) {
                  final v = e.value;
                  return v != null && v.toString().trim().isNotEmpty;
                }).toList();

                if (validEntries.isEmpty) continue;

                instrumentWidgets.add(
                  _instrumentBlock(
                    "Instrument Details $instrumentNumber",
                    rowData,
                    instrumentLabelMap,
                  ),
                );
              }

              widgets.add(
                pw.Column(
                  children: [
                    for (int i = 0; i < instrumentWidgets.length; i += 2)
                      pw.Padding(
                        padding: const pw.EdgeInsets.only(bottom: 12),
                        child: pw.Row(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Expanded(child: instrumentWidgets[i]),
                            pw.SizedBox(width: 10),

                            if (i + 1 < instrumentWidgets.length)
                              pw.Expanded(child: instrumentWidgets[i + 1])
                            else
                              pw.Expanded(child: pw.SizedBox()),
                          ],
                        ),
                      ),
                  ],
                ),
              );

              continue;
            }

            // ----- NORMAL SECTIONS ----- //

            final schemaSection = schema.sections?.firstWhere(
              (s) => s.key == sectionKey,
              orElse: () => FormSection(),
            );

            final title =
                schemaSection?.title ?? sectionKey.replaceAll('_', ' ');

            if (sectionData is Map<String, dynamic>) {
              widgets.add(
                _keyValueSection(
                  title,
                  sectionData,
                  questionMap,
                  imageCache,
                  formFiles,
                ),
              );

              widgets.add(pw.SizedBox(height: 15));
            }
            previousSectionKey = sectionKey;
            continue;
          }
          return widgets;
        },
      ),
    );

    return pdf.save();
  }

  // ---------- SIGNATURE ---------- //
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

  // ----------------------------- HEADER ----------------------------- //

  static pw.Widget _header({
    required pw.Context context,
    required pw.ImageProvider logo,
    required String title,

    Map<String, dynamic>? projectInfo,
  }) {
    final isFirstPage = context.pageNumber == 1;

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.end,
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
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.end,
                children: [
                  pw.Text(
                    title,
                    textAlign: pw.TextAlign.right,
                    style: pw.TextStyle(
                      fontSize: 16,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),

                  if (!isFirstPage && projectInfo != null) ...[
                    pw.SizedBox(height: 5),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text(
                          projectInfo['client']?.toString() ?? "",
                          style: pw.TextStyle(fontSize: 9),
                        ),

                        pw.Text(
                          projectInfo['site']?.toString() ?? "",
                          style: pw.TextStyle(fontSize: 9),
                        ),

                        pw.Text(
                          projectInfo['contract_no']?.toString() ?? "",
                          style: pw.TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
        pw.SizedBox(height: 15),
      ],
    );
  }

  // ----------------------------- PROJECT INFO ----------------------------- //
  static pw.Widget _projectInfo(Map<String, dynamic> data) {
    return pw.Container(
      color: PdfColors.blue700,
      padding: pw.EdgeInsets.all(6),
      alignment: pw.Alignment.centerLeft,
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        mainAxisSize: pw.MainAxisSize.min,
        children: [
          _cellRich('Client', data['client'], textColor: PdfColors.white),
          _cellRich('Site', data['site'], textColor: PdfColors.white),
          _cellRich(
            'Contract No',
            data['contract_no'],
            textColor: PdfColors.white,
          ),
        ],
      ),
    );
    /* pw.Table(
      border: pw.TableBorder.all(color: PdfColors.white),

      children: [
        pw.TableRow(
          decoration: pw.BoxDecoration(color: PdfColors.blue700),
          children: [
            _cellRich(
              'Client',
              data['client'],
              textColor: PdfColors.white,
              leftPadding: 10,
            ),
            _cellRich(
              'Site',
              data['site'],
              textColor: PdfColors.white,
              leftPadding: 10,
            ),
            _cellRich(
              'Contract No',
              data['contract_no'],
              textColor: PdfColors.white,
              leftPadding: 10,
            ),
          ],
        ),
      ],
    );
   */
  }

  static pw.Widget _inspectedBy(Map<String, dynamic> data) {
    final signature = data['signature'];

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      mainAxisSize: pw.MainAxisSize.min,
      children: [
        pw.Table(
          children: [
            pw.TableRow(
              children: [
                _cellRich(
                  'Inspection Undertaken Date',
                  data['inspection_undertaken_date'],
                ),
                _cellRich('Inspector Name', data['inspector_name']),
              ],
            ),
            pw.TableRow(
              children: [
                _cellRich(
                  'Inspector Compex Number',
                  data['inspector_compex_number'],
                ),
                _cellRich(
                  'Inspection Complex Expiry Dates',
                  data['inspection_complex_expiry_dates'],
                ),
              ],
            ),
          ],
        ),
        if (signature is String && signature.isNotEmpty) ...[
          pw.SizedBox(height: 5),
          pw.Text(
            'Signature',
            style: pw.TextStyle(fontSize: 9, fontWeight: pw.FontWeight.bold),
          ),
          signatureWidget(signature),
        ],
      ],
    );
  }

  // ----------------------------- SMALL HELPERS ----------------------------- //
  static pw.Widget _sectionTitle(String text) {
    return pw.Container(
      width: double.infinity,
      padding: pw.EdgeInsets.symmetric(
        vertical: getSize(5),
      ).copyWith(left: getSize(10)),
      decoration: pw.BoxDecoration(color: PdfColors.blue700),
      child: pw.Text(
        text,
        style: pw.TextStyle(
          fontSize: 11,
          fontWeight: pw.FontWeight.bold,
          color: PdfColors.white,
        ),
      ),
    );
  }

  static pw.Widget _instrumentBlock(
    String title,
    Map<String, dynamic> rowData,
    Map<String, String> instrumentLabelMap,
  ) {
    final validEntries = rowData.entries.where((e) {
      final v = e.value;
      return v != null && v.toString().trim().isNotEmpty;
    }).toList();

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        _sectionTitle(title),
        pw.SizedBox(height: 8),

        ...validEntries.map((entry) {
          final label = instrumentLabelMap[entry.key] ?? entry.key;
          final value = entry.value;

          return pw.Padding(
            padding: const pw.EdgeInsets.symmetric(vertical: 2),
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text("$label: ", style: pw.TextStyle(fontSize: 9)),
                pw.Expanded(
                  child: pw.Text(
                    value.toString(),
                    textAlign: pw.TextAlign.end,
                    style: pw.TextStyle(
                      fontSize: 9,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }

  static pw.Widget _cellRich(
    String title,
    dynamic value, {
    PdfColor? textColor,
  }) {
    return pw.Padding(
      padding: const pw.EdgeInsets.all(6).copyWith(left: 0),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            title,
            style: pw.TextStyle(
              fontSize: 9,
              fontWeight: pw.FontWeight.bold,
              color: textColor,
            ),
          ),
          pw.SizedBox(height: 2),
          pw.Text(
            value?.toString() ?? '',
            style: pw.TextStyle(fontSize: 9, color: textColor),
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

          final questionWidget = pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  if (questionText.isNotEmpty)
                    pw.Expanded(
                      child: pw.Text(
                        '${index++}. $questionText',
                        style: pw.TextStyle(fontSize: 9),
                        maxLines: 10,
                      ),
                    ),
                  if (rawValue is Map && rawValue.containsKey('answer')) ...[
                    pw.SizedBox(width: 3),
                    pw.Text(
                      '${DynamicFormHelper.answerToValue(rawValue['answer'])}',
                      style: pw.TextStyle(
                        fontSize: 9,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                  ],
                ],
              ),

              pw.SizedBox(height: 4),

              // ----------------------------- ANSWER STRUCTURE { answer, reason } ----------------------------- //
              if (rawValue is Map && rawValue.containsKey('answer')) ...[
                if (hasData(rawValue['reason'])) ...[
                  pw.SizedBox(height: 2),
                  pw.Text(
                    'Reason: ${rawValue['reason']}',
                    style: const pw.TextStyle(fontSize: 8),
                  ),
                ],

                // -------- FIELD ATTACHMENTS (QUESTION LEVEL) -------- //

                //  POINT 4: render dropdown attachments under the question //
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
                            height: 200,
                            child: pw.Image(
                              imageCache[file.url!]!,
                              fit: pw.BoxFit.fill,
                            ),
                          ),
                    ],
                  ),
                ],
              ]
              // ----------------------------- SIMPLE VALUE ----------------------------- //
              else
                pw.Text(
                  '${questionText.isNotEmpty ? "Ans: " : ""}${CustomDateTimeFormat.isIsoDate(rawValue) ? DateFormat('dd/MM/yyyy').format(DateTime.parse(rawValue)) : rawValue}',
                  style: const pw.TextStyle(fontSize: 9),
                ),

              pw.Divider(thickness: 0.5, color: PdfColors.grey300),
            ],
          );

          return questionWidget;
        }),
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
