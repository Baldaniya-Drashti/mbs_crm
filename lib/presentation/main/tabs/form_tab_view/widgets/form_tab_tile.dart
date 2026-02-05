import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/helper/internet_connectivity_helper.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';
import 'package:mbs_crm/presentation/common/utils/date_time_format.dart';
import 'package:mbs_crm/presentation/common/utils/flushbar_creator.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/swipe_to_delete.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

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
    return SwipeToDelete(
      swipeKey: UniqueKey(),
      confirmSwipe: (direction) async {
        if (direction == SwipeDirection.endToStart) {
          if (onDeleteForm != null) {
            onDeleteForm!();
          }
          return false;
        }
        return false;
      },
      child: StreamBuilder(
        stream: NetworkListener().onStatusChange(),

        builder: (context, snapshot) {
          final isOnline = snapshot.data ?? false;
          return GestureDetector(
            onTap: !isOnline
                ? () {
                    noInternetToast().show(context);
                  }
                : onUpdateForm,
            child: Container(
              padding: EdgeInsets.all(getSize(10)),
              decoration: BoxDecoration(color: AppColors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  BaseText(
                    text: form.formName ?? "",
                    fontFamily: FontConstant.jost,
                    fontWeight: FontWeight.w500,
                    maxLines: 2,
                  ),
                  Gap(getSize(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (userId == null)
                        Expanded(
                          child: BaseText(
                            text:
                                "${StringConstant.createdBy}: ${form.userName ?? ''}",
                            fontSize: 14,
                            textColor: AppColors.grey,
                            maxLines: 2,
                          ),
                        ),
                      BaseText(
                        text: DateFormat('dd-MM-yyyy').format(
                          (form.createdAt != null)
                              ? CustomDateTimeFormat.timeStampToDateTime(
                                  form.createdAt!,
                                )
                              : DateTime.now().add(Duration(days: 1)),
                        ),
                        fontSize: 12,
                        textColor: AppColors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
