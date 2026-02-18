import 'package:flutter/material.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

class SwipeToDelete extends StatelessWidget {
  final Widget child;
  final Future<bool?> Function(SwipeDirection)? confirmSwipe;
  final Key swipeKey;
  const SwipeToDelete({
    super.key,
    required this.child,
    required this.confirmSwipe,
    required this.swipeKey,
  });

  @override
  Widget build(BuildContext context) {
    return SwipeableTile.card(
      key: swipeKey,
      color: AppColors.transparent,
      shadow: BoxShadow(
        color: AppColors.grey.withValues(alpha: 0.2),
        blurRadius: 15,
      ),
      horizontalPadding: 0,
      verticalPadding: getSize(8),
      direction: SwipeDirection.endToStart,
      confirmSwipe: confirmSwipe,
      borderRadius: getSize(10),
      onSwiped: (dir) {},
      swipeThreshold: 0.5,
      backgroundBuilder: (context, direction, progress) {
        return AnimatedBuilder(
          animation: progress,
          builder: (context, child) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 400),
              color: progress.value > 0.1 ? AppColors.red : AppColors.white,
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: getSize(20)),
                  child: Icon(
                    Icons.delete_outline_rounded,
                    color: AppColors.backgroundRed,
                    size: getSize(30),
                  ),
                ),
              ),
            );
          },
        );
      },
      child: child,
    );
  }
}
