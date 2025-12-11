// ignore_for_file: prefer_const_constructors

import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/core/constants/string_constant.dart';
import 'package:mbs_crm/presentation/common/widgets/base_text.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PaginatedListView extends StatelessWidget {
  final Widget child;
  final bool isNoDataFound;
  final bool? enablePullUp;
  final bool? enablePullDown;
  final String? dataStatus;
  final VoidCallback onRefresh;
  final VoidCallback onLoading;
  final RefreshController refreshController;
  final bool reverse;
  final Axis? scrollDirection;
  const PaginatedListView({
    super.key,
    required this.onRefresh,
    required this.onLoading,
    required this.child,
    required this.refreshController,
    this.isNoDataFound = false,
    this.dataStatus,
    this.reverse = false,
    this.scrollDirection,
    this.enablePullUp,
    this.enablePullDown,
  });

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      header: MaterialClassicHeader(color: AppColors.primary),
      enablePullUp: true,
      enablePullDown: true,
      reverse: reverse,
      scrollDirection: scrollDirection,
      controller: refreshController,
      physics: BouncingScrollPhysics(),
      footer: CustomFooter(
        builder: (_, mode) {
          String text;
          if (mode == LoadStatus.idle) {
            text = "↑ Pull up to load more";
          } else if (mode == LoadStatus.failed) {
            text = "Load Failed! Tap to try again.";
          } else if (mode == LoadStatus.canLoading) {
            text = "⟳ Release to load more";
          } else {
            text = "No more data";
          }
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Center(
              child: (mode == LoadStatus.loading)
                  ? CircularProgressIndicator(strokeWidth: 2)
                  : BaseText(
                      text: text,
                      fontSize: 13,
                      textColor: AppColors.black.withValues(
                        alpha: getSize(0.4),
                      ),
                    ),
            ),
          );
        },
      ),
      onRefresh: () {
        onRefreshData();
      },
      onLoading: () {
        onLoadMoreData();
      },
      child: isNoDataFound
          ? Center(
              child: SizedBox(
                width: getSize(280),
                child: BaseText(
                  textColor: AppColors.black.withValues(alpha: 0.65),
                  text: dataStatus ?? StringConstant.noResultFound,
                  textAlign: TextAlign.center,
                  lineHeight: 1.2,
                ),
              ),
            )
          : child,
    );
  }

  onRefreshData() {
    onRefresh();
    refreshController.refreshCompleted();
  }

  onLoadMoreData() {
    onLoading();
    refreshController.loadComplete();
  }
}
