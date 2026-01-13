import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';

class FormTile extends StatelessWidget {
  final HomeDTO form;
  const FormTile({super.key, required this.form});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getSize(10)),
      margin: EdgeInsets.symmetric(vertical: getSize(10)),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [BoxShadow(color: AppColors.grey, blurRadius: 10)],
        border: Border.all(color: AppColors.primary),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              BaseText(text: "${form.id ?? 0}. "),
              Expanded(child: BaseText(text: form.formName ?? "", maxLines: 2)),
            ],
          ),
          Gap(getSize(10)),
          Align(
            alignment: Alignment.centerRight,
            child: BaseText(
              text: DateFormat('dd-MM-yyyy').format(
                DateTime.parse(form.createdAt ?? DateTime.now().toString()),
              ),
              fontSize: 12,
              textColor: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
