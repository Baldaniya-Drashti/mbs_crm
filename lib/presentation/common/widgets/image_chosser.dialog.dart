import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:flutter/cupertino.dart';

class ImageChooserDialog {
  showImageChooserDialog({
    required VoidCallback takePhotoCallback,
    required VoidCallback selectPhotoCallback,
    required BuildContext context,
  }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: takePhotoCallback,
            child: BaseText(text: StringConstant.takePhoto),
          ),
          CupertinoActionSheetAction(
            onPressed: selectPhotoCallback,
            child: BaseText(text: StringConstant.galleryPhoto),
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
