// ignore_for_file: avoid_print

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePickerUtils {
  Future<String?> pickFile({required BuildContext context}) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        // allowedExtensions: ['pdf'],
      );

      if (result != null) {
        String? filePath = result.files.single.path;
        return filePath;
      }
    } catch (ex) {
      print('Error ===> ${ex.toString()}');
    }
    return null;
  }
}
