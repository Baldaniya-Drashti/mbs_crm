// ignore_for_file: avoid_print, use_build_context_synchronously

import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/infrastructure/attachment_file_dto/attachment_file_dto.dart';
import 'package:mbs_crm/infrastructure/dynamic_form_dto/dynamic_form_dto.dart';
import 'package:mbs_crm/infrastructure/form_files_group_dto/form_file_group_dto.dart';
import 'package:mbs_crm/presentation/common/utils/flushbar_creator.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:mbs_crm/core/pdf_format/dynamic_pdf_generator.dart';

Future<void> generateAndOpenPdf({
  required BuildContext context,
  required Map<String, dynamic> json,
  required DynamicFormDTO schema,
  List<FormFileGroupDTO>? formFiles,
}) async {
  try {
    showPdfLoader(context);

    final Uint8List bytes = await DynamicPdfGenerator.buildPdf(
      json,
      formFiles,
      schema,
    );
    hidePdfLoader(context);

    /* final String uniqueFileName =
        'inspection_report_${DateFormat('yyyyMMdd_HHmmss').format(DateTime.now())}.pdf'; */
    final String uniqueFileName = buildPdfFileName(json: json, schema: schema);

    /* Clientjobnumber - site - Y-Md-d H:i - form type.pdf
    #12323 - London - 2026-02-06 - ...Ex'd.pdf */

    Directory? baseDir;
    if (Platform.isAndroid) {
      baseDir = Directory('/storage/emulated/0/Download');
      if (!await baseDir.exists()) {
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

    final result = await OpenFilex.open(file.path);
    if (result.type != ResultType.done) {
      print('OpenFile result: ${result.message}');
    }
  } catch (err) {
    hidePdfLoader(context);
    print("Download PDF Error----> $err");
  }
}

Future<File> generateAndSendPdfFile({
  required BuildContext context,
  required Map<String, dynamic> json,
  required DynamicFormDTO schema,
  List<FormFileGroupDTO>? formFiles,
}) async {
  showPdfLoader(context);

  final Uint8List bytes = await DynamicPdfGenerator.buildPdf(
    json,
    formFiles,
    schema,
  );
  hidePdfLoader(context);

  /* final String uniqueFileName =
  'inspection_report_${DateFormat('yyyyMMdd_HHmmss').format(DateTime.now())}.pdf'; */
  final String uniqueFileName = buildPdfFileName(json: json, schema: schema);

  Directory baseDir;
  if (Platform.isAndroid) {
    baseDir = Directory('/storage/emulated/0/Download');
    if (!await baseDir.exists()) {
      baseDir = (await getExternalStorageDirectory())!;
    }
  } else {
    baseDir = await getApplicationDocumentsDirectory();
  }

  final Directory folder = Directory(
    '${baseDir.path}/${StringConstant.mbsCRM}',
  );
  if (!await folder.exists()) {
    await folder.create(recursive: true);
  }

  final file = File('${folder.path}/$uniqueFileName');
  await file.writeAsBytes(bytes);

  return file;
}

Future<void> downloadAttachement({
  required BuildContext context,
  required AttachmentFileDTO file,
  required Map<String, dynamic> json,
}) async {
  try {
    showFileLoader(context);
    final String? sourcePath = file.url;

    print("sourcePath---->   $sourcePath");
    if (sourcePath == null || sourcePath.isEmpty) {
      throw Exception("File path is empty");
    }

    Directory? baseDir;
    if (Platform.isAndroid) {
      baseDir = Directory('/storage/emulated/0/Download');
      if (!await baseDir.exists()) {
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

    // final String filePath = '${folder.path}/${file.name}';
    final formattedFileName = buildAttachmentFileName(
      json: json,
      originalFileName: file.name ?? "file",
      sourcePath: sourcePath,
    );

    final targetPath = '${folder.path}/$formattedFileName';
    final targetFile = File(targetPath);

    if (await targetFile.exists()) {
      hideFileLoader(context);
      showSuccess(message: "File already exist!").show(context);
      return;
    }

    if (sourcePath.contains('http')) {
      final dio = Dio();
      await dio.download(sourcePath, targetPath);
      print("HTTP DOWNLOADING----> $targetPath");
    } else {
      final localFile = File(sourcePath);

      if (!await localFile.exists()) {
        throw Exception("Local file not found");
      }

      print("Local DOWNLOADING----> $targetPath");

      await localFile.copy(targetPath);
    }

    hidePdfLoader(context);
    showSuccess(message: "File Downloaded!").show(context);
  } catch (err) {
    hidePdfLoader(context);
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

String _safeValue(dynamic value, {String fallback = 'NA'}) {
  if (value == null) return fallback;
  if (value is String && value.trim().isNotEmpty) return value.trim();
  return fallback;
}

String buildPdfFileName({
  required Map<String, dynamic> json,
  required DynamicFormDTO schema,
}) {
  final projectInfo = json['project_information'] ?? {};
  final clientJobNumber = _safeValue(
    projectInfo['client'],
    fallback: 'UnknownClient',
  );
  final site = _safeValue(projectInfo['site'], fallback: 'UnknownSite');
  final formTitle = _safeValue(schema.title, fallback: 'Form');
  final dateTime = DateFormat('yyyy-MM-dd HH-mm').format(DateTime.now());
  return '$clientJobNumber - $site - $dateTime - $formTitle.pdf';
}

String buildAttachmentFileName({
  required Map<String, dynamic> json,
  required String originalFileName,
  required String sourcePath,
}) {
  final projectInfo = json['project_information'] ?? {};
  final clientJobNumber = _safeValue(
    projectInfo['client'],
    fallback: 'UnknownClient',
  );
  final site = _safeValue(projectInfo['site'], fallback: 'UnknownSite');
  final dateTime = DateFormat('yyyy-MM-dd HH-mm').format(DateTime.now());

  String extension = '';

  // 1️⃣ Try getting extension from original filename
  if (originalFileName.contains('.')) {
    extension = originalFileName.substring(originalFileName.lastIndexOf('.'));
  }

  // 2️⃣ If no extension → extract from URL/path
  if (extension.isEmpty && sourcePath.contains('.')) {
    final uri = Uri.parse(sourcePath);
    final lastSegment = uri.pathSegments.isNotEmpty
        ? uri.pathSegments.last
        : sourcePath;

    if (lastSegment.contains('.')) {
      extension = lastSegment.substring(lastSegment.lastIndexOf('.'));
    }
  }

  return '$clientJobNumber - $site - $dateTime - $originalFileName$extension';
}
