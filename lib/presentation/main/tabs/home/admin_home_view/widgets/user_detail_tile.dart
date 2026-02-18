import 'package:flutter/material.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/helper/internet_connectivity_helper.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/infrastructure/user_dto/user_dto.dart';
import 'package:mbs_crm/presentation/common/utils/flushbar_creator.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/styles.dart';
import 'package:mbs_crm/presentation/core/widgets/buttons/swipe_to_delete.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

class UserDetailTile extends StatelessWidget {
  final UserDTO user;
  final void Function()? onDeleteUser;
  final void Function()? onEditUser;
  const UserDetailTile({
    super.key,
    required this.user,
    this.onDeleteUser,
    this.onEditUser,
  });

  @override
  Widget build(BuildContext context) {
    return SwipeToDelete(
      swipeKey: UniqueKey(),
      confirmSwipe: (direction) async {
        if (direction == SwipeDirection.endToStart) {
          if (onDeleteUser != null) {
            onDeleteUser!();
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
                : onEditUser,
            child: Container(
              padding: EdgeInsets.all(getSize(10)),
              decoration: BoxDecoration(color: AppColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BaseText(
                          text:
                              "${user.first_name ?? ""} ${user.last_name ?? ""}",
                          fontFamily: FontConstant.jost,
                          fontWeight: FontWeight.w500,
                          maxLines: 2,
                        ),
                        BaseText(
                          text: user.email ?? "",
                          textColor: AppColors.grey,
                          fontSize: 14,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: getSize(10)),
                    child: Icon(Icons.edit_outlined, color: AppColors.primary),
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
