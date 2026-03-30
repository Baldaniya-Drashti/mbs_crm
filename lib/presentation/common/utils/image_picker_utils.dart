import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerUtils {
  final picker = ImagePicker();
  final int imageQuality = 50;
  bool cameraPermissionPermanentlyDenied = false;
  bool galleryPermissionPermanentlyDenied = false;

  Future<String?> pickImage({
    required ImageSource imageSource,
    required BuildContext context,
  }) async {
    try {
      XFile? pickedImage;

      if (imageSource == ImageSource.gallery) {
        pickedImage = await picker.pickImage(
          source: imageSource,
          imageQuality: imageQuality,
        );
      } else if (imageSource == ImageSource.camera) {
        try {
          pickedImage = await picker.pickImage(
            source: imageSource,
            maxWidth: 1080,
            maxHeight: 1920,
            imageQuality: 50,
          );
        } catch (e, stackTrace) {
          debugPrint(
            "Error crash imagepicker------> $e \n Stack Trace------> $stackTrace",
          );
        }
      }

      if (pickedImage != null) {
        File imageFile = File(pickedImage.path);

        debugPrint(
          'File size = ${(imageFile.lengthSync() / 1024).toStringAsFixed(2)} KB',
        );
      }
      return pickedImage?.path;
    } catch (ex) {
      debugPrint('Pick image catch Error ===> ${ex.toString()}');
      return null;
    }
  }
}
