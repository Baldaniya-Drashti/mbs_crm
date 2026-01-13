import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/user_dto/user_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';

class UserDetailTile extends StatelessWidget {
  final UserDTO user;
  const UserDetailTile({super.key, required this.user});

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
              BaseText(text: "${user.id ?? 0}. "),
              Expanded(
                child: BaseText(
                  text: "${user.first_name ?? ""} ${user.last_name ?? ""}",
                  maxLines: 2,
                ),
              ),
            ],
          ),
          Gap(getSize(10)),
        ],
      ),
    );
  }
}
