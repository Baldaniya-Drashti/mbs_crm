import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/home_dto/home_dto.dart';
import 'package:mbs_crm/presentation/common/utils/date_time_format.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/swipe_to_delete.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

class FormTile extends StatelessWidget {
  final HomeDTO form;
  final int index;
  final void Function()? onDeleteForm;

  const FormTile({
    super.key,
    required this.index,
    this.onDeleteForm,
    required this.form,
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
      child: Container(
        padding: EdgeInsets.all(getSize(10)),
        decoration: BoxDecoration(color: AppColors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            BaseText(
              text: form.formName ?? "",
              textColor: AppColors.primary,
              fontFamily: FontConstant.jost,
              fontWeight: FontWeight.w500,
              maxLines: 3,
            ),
            Gap(getSize(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  color: AppColors.grey,
                  size: getSize(15),
                ),
                Gap(getSize(2)),
                Align(
                  alignment: Alignment.centerRight,
                  child: BaseText(
                    text: DateFormat('dd-MM-yyyy').format(
                      (form.createdAt != null)
                          ? CustomDateTimeFormat.timeStampToDateTime(
                              form.createdAt!,
                            )
                          : DateTime.now(),
                    ),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    textColor: AppColors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
