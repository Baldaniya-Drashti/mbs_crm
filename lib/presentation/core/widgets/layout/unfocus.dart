import 'package:mbs_crm/presentation/common/utils/app_focus.dart';
import 'package:flutter/material.dart';

class CustomUnFocus extends StatelessWidget {
  final Widget? child;
  const CustomUnFocus({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateColor.transparent,
      onTap: () {
        AppFocus.unfocus(context);
      },
      child: child,
    );
  }
}
