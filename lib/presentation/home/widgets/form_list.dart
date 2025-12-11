/* import 'package:flutter/material.dart';
import 'package:mbs_crm/core/utils/common_listing.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';

class FormsList extends StatelessWidget {
  const FormsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CommonListing.formList.length,
      itemBuilder: (_, index) {
        final form = CommonListing.formList[index];
        return Container(
          padding: EdgeInsets.all(getSize(10)),
          margin: EdgeInsets.symmetric(vertical: getSize(10)),
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: [BoxShadow(color: AppColors.grey, blurRadius: 10)],
            border: Border.all(color: AppColors.primary),
            borderRadius: BorderRadius.circular(10),
          ),
          child: BaseText(text: form),
        );
      },
    );
  }
}
 */
