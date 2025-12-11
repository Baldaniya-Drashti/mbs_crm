import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mbs_crm/core/constants/font_constants.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';

class OnBoardingRadio extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;
  const OnBoardingRadio({
    super.key,
    required this.title,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final unSelectedColor = (isSelected) ? AppColors.primary : AppColors.white;
    final selectedColor = (isSelected) ? AppColors.white : AppColors.primary;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          overlayColor: WidgetStatePropertyAll(
            AppColors.primary.withValues(alpha: 0.2),
          ),
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(getSize(20)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: unSelectedColor,
              border: Border.all(color: selectedColor),
            ),
            child: Icon(icon, size: getSize(60), color: selectedColor),
          ),
        ),
        Gap(getSize(5)),
        BaseText(
          text: title,
          textColor: AppColors.primary,
          fontSize: 25,
          fontWeight: FontWeight.w500,
          fontFamily: FontConstant.jost,
        ),
      ],
    );
  }
}
