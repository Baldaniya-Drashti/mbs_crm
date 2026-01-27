import 'dart:io';
import 'dart:typed_data';
import 'package:intl/intl.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:mbs_crm/core/pdf_format/dynamic_pdf_generator.dart';

Future<void> generateAndOpenPdf({
  required Map<String, dynamic> json,
  required DynamicFormDTO schema,
  String? fileName,
}) async {
  try {
    final Uint8List bytes = await DynamicPdfGenerator.buildPdf(json, schema);
    final String uniqueFileName =
        fileName ??
        'inspection_report_${DateFormat('yyyyMMdd_HHmmss').format(DateTime.now())}.pdf';
    Directory? baseDir;

    if (Platform.isAndroid) {
      baseDir = Directory('/storage/emulated/0/Download');
      if (!await baseDir.exists()) {
        // fallback if folder doesn't exist
        baseDir = await getExternalStorageDirectory();
      }
    } else if (Platform.isIOS) {
      baseDir = await getApplicationDocumentsDirectory();
    }

    if (baseDir == null) throw Exception("Could not get storage directory");

    final Directory folder = Directory(
      '${baseDir.path}/${StringConstant.mbsCRM}',
    );
    if (!await folder.exists()) {
      await folder.create(recursive: true);
    }
    final File file = File('${folder.path}/$uniqueFileName');
    await file.writeAsBytes(bytes);

    print("PDF saved at: ${file.path}");

    // Open the PDF
    final result = await OpenFilex.open(file.path);
    if (result.type != ResultType.done) {
      print('⚠️ OpenFile result: ${result.message}');
    }

    /* final dir = await getTemporaryDirectory();
    final file = File('${dir.path}/$fileName');
    print("PDF File--> $file");

    await file.writeAsBytes(bytes);
    final result = await OpenFilex.open(file.path);
    if (result.type != ResultType.done) {
      print('⚠️ OpenFile result: ${result.message}');
    } */
  } catch (err) {
    print("Download PDF Error----> $err");
  }
}

bool hasNonEmptyValue(dynamic value) {
  if (value == null) return false;
  if (value is String) return value.trim().isNotEmpty;
  if (value is List) return value.isNotEmpty;
  if (value is Map) return value.isNotEmpty;
  return true;
}

bool hasData(dynamic value) {
  if (value == null) return false;
  if (value is String) return value.trim().isNotEmpty;
  if (value is Map) return value.isNotEmpty;
  if (value is List) return value.isNotEmpty;
  return true;
}
