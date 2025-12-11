import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:flutter/material.dart';

class SomethingWrong extends StatelessWidget {
  final String? title;
  const SomethingWrong({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BaseText(
        text: title ?? StringConstant.noDataFound,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        // textColor: AppColors.red,
      ),
    );
  }
}
