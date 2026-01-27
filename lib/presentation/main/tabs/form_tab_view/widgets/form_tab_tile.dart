import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/helper/internet_connectivity_helper.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';

class FormTabTile extends StatelessWidget {
  final HomeDTO form;
  final int? userId;
  final int index;
  final void Function()? onDeleteForm;
  final void Function()? onUpdateForm;

  const FormTabTile({
    super.key,
    required this.index,
    required this.form,
    this.onDeleteForm,
    this.onUpdateForm,
    this.userId,
  });

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
              BaseText(text: "$index. "),
              Expanded(child: BaseText(text: form.formName ?? "", maxLines: 2)),
              StreamBuilder(
                stream: NetworkListener().onStatusChange(),
                builder: (_, snapshot) {
                  final isOnline = snapshot.data ?? false;

                  if (!isOnline) return const SizedBox.shrink();
                  return Row(
                    children: [
                      InkWell(
                        onTap: onUpdateForm,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: getSize(5)),
                          child: Icon(
                            Icons.edit_outlined,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: onDeleteForm,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: getSize(5)),
                          child: Icon(
                            Icons.delete_outline,
                            color: AppColors.red,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
          Gap(getSize(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (userId == null)
                Expanded(
                  child: BaseText(
                    text: "${StringConstant.createdBy}: ${form.server_id}",
                    fontSize: 14,
                    textColor: AppColors.grey,
                    maxLines: 2,
                  ),
                ),
              BaseText(
                text: DateFormat('dd-MM-yyyy').format(
                  DateTime.parse(form.createdAt ?? DateTime.now().toString()),
                ),
                fontSize: 12,
                textColor: AppColors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
