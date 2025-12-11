import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

class CenterLoadingIndicator extends StatelessWidget {
  final bool isOnlyLoader;
  const CenterLoadingIndicator({super.key, this.isOnlyLoader = true});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.black.withValues(alpha: (isOnlyLoader) ? 0 : 0.15),
      child: Center(
        child: Container(
          height: getSize(80),
          width: getSize(80),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(getSize(10)),
          ),
          padding: EdgeInsets.all(getSize(10)),
          alignment: Alignment.center,
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
      ),
    );
  }
}
