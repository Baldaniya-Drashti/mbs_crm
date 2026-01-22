// ignore_for_file: prefer_const_constructors

import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/common_button.dart';
import 'package:flutter/material.dart';

class FormDeleteDialog extends StatelessWidget {
  const FormDeleteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  deleteDialog(
    BuildContext context, {
    required Function() onPressedDelete,
    required Function() onPressedCancel,
  }) {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.symmetric(
            horizontal: getSize(20),
            vertical: getSize(20),
          ),
          elevation: 0,
          insetPadding: EdgeInsets.symmetric(horizontal: getSize(20)),
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getSize(10)),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              BaseText(
                text: StringConstant.deleteForm,
                fontFamily: FontConstant.jost,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
              SizedBox(height: getSize(20)),
              BaseText(
                text: StringConstant.deleteFormDesc,
                textColor: AppColors.black.withValues(alpha: 0.60),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: getSize(30)),
              Row(
                children: [
                  Expanded(
                    child: CommonButton(
                      width: getSize(160),
                      onPressed: onPressedCancel,
                      borderColor: AppColors.primary,
                      buttonTextColor: AppColors.primary,
                      backgroundColor: AppColors.white,
                      buttonText: StringConstant.cancel,
                    ),
                  ),
                  SizedBox(width: getSize(19)),
                  Expanded(
                    child: CommonButton(
                      width: getSize(160),
                      onPressed: onPressedDelete,
                      buttonText: StringConstant.delete,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
