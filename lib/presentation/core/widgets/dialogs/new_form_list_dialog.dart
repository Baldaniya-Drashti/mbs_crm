import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/core/utils/common_listing.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/form_dto/form_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';

class NewFormDialog extends StatelessWidget {
  const NewFormDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  static Future<dynamic> dialog(
    BuildContext context, {
    Function(FormDTO value)? onTap,
  }) {
    return showDialog(
      context: context,
      builder: (con) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          shadowColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          insetPadding: EdgeInsets.symmetric(horizontal: getSize(20)),
          contentPadding: EdgeInsets.only(
            top: getSize(20),
            bottom: getSize(10),
          ),
          elevation: 10,
          constraints: BoxConstraints(
            minWidth: double.maxFinite,
            maxHeight: getSize(500),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BaseText(
                text: StringConstant.selectTheFormRequired,
                fontSize: 20,
                fontFamily: FontConstant.jost,
                fontWeight: FontWeight.w500,
              ),
              Divider(color: AppColors.grey, height: getSize(20)),
              Flexible(
                child: ListView.builder(
                  itemCount: CommonListing.formList.length,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    final form = CommonListing.formList[index];
                    return GestureDetector(
                      onTap: () {
                        if (onTap != null) {
                          context.maybePop();
                          onTap.call(form);
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(getSize(10)),
                        margin: EdgeInsets.symmetric(
                          vertical: getSize(5),
                          horizontal: getSize(15),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          border: Border.all(color: AppColors.primary),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: BaseText(
                          text: form.title ?? '',
                          fontSize: 12,
                          textColor: AppColors.white,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
