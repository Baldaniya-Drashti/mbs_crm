import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbs_crm/application/home_bloc/home_bloc.dart';
import 'package:mbs_crm/core/helper/sync_progress.dart';
import 'package:mbs_crm/core/helper/sync_service.dart';
import 'package:mbs_crm/core/utils/math_utils.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/core/enum.dart';
import 'package:mbs_crm/presentation/core/styles/app_colors.dart';

class SyncBanner extends StatelessWidget {
  const SyncBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final syncService = getIt<SyncService>();

    return StreamBuilder<SyncProgress>(
      stream: syncService.progressStream,
      initialData: SyncProgress.idle,
      builder: (context, snapshot) {
        final progress = snapshot.data!;
        if (progress.stage == SyncStage.idle ||
            progress.stage == SyncStage.completed) {
          return const SizedBox.shrink();
        }

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: getSize(12)),
          child: CircularProgressIndicator(
            color: AppColors.white,
            constraints: BoxConstraints(
              minWidth: getSize(20),
              minHeight: getSize(20),
            ),
          ),
        );
      },
    );
  }
}
