import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';

class SyncProgressDialog extends StatelessWidget {
  const SyncProgressDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: AlertDialog(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(color: AppColors.primary),
            Gap(getSize(10)),
            BaseText(
              text: StringConstant.syncingData,
              fontSize: 15,
              fontFamily: FontConstant.jost,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
