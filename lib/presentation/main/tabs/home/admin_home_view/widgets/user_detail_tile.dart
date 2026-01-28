import 'package:flutter/material.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/user_dto/user_dto.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';

class UserDetailTile extends StatelessWidget {
  final UserDTO user;
  final int index;
  final void Function()? onDeleteUser;
  final void Function()? onEditUser;
  const UserDetailTile({
    super.key,
    required this.user,
    required this.index,
    this.onDeleteUser,
    this.onEditUser,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseText(text: "${index + 1}. "),
          Expanded(
            child: BaseText(
              text: "${user.first_name ?? ""} ${user.last_name ?? ""}",
              maxLines: 2,
            ),
          ),
          InkWell(
            onTap: onEditUser,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getSize(10)),
              child: Icon(Icons.edit_outlined, color: AppColors.primary),
            ),
          ),
          InkWell(
            onTap: onDeleteUser,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getSize(10)),
              child: Icon(Icons.delete_outline, color: AppColors.red),
            ),
          ),
        ],
      ),
    );
  }
}
