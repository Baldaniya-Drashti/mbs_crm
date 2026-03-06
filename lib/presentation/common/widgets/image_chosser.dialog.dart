// ignore_for_file: use_build_context_synchronously

import 'package:image_picker/image_picker.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/presentation/common/utils/file_picker_utils.dart';
import 'package:mbs_crm/presentation/common/utils/image_picker_utils.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:flutter/cupertino.dart';

class ImageChooserDialog {
  Future<List<String>?> showImageChooserDialog({
    required BuildContext context,
    bool isOnlyImages = true,
  }) {
    return showCupertinoModalPopup<List<String>>(
      context: context,
      builder: (_) => CupertinoActionSheet(
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () async {
              final path = await ImagePickerUtils().pickImage(
                imageSource: ImageSource.camera,
                context: context,
              );

              Navigator.pop(context, path != null ? [path] : null);
            },
            child: BaseText(text: StringConstant.takePhoto),
          ),
          CupertinoActionSheetAction(
            onPressed: () async {
              final path = await ImagePickerUtils().pickImage(
                imageSource: ImageSource.gallery,
                context: context,
              );

              Navigator.pop(context, path != null ? [path] : null);
            },
            child: BaseText(text: StringConstant.galleryPhoto),
          ),
          if (!isOnlyImages)
            CupertinoActionSheetAction(
              onPressed: () async {
                final path = await FilePickerUtils().pickFile(context: context);
                Navigator.pop(context, path != null ? [path] : null);
              },
              child: BaseText(text: StringConstant.pickFile),
            ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: BaseText(text: StringConstant.cancel, fontSize: 18),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
