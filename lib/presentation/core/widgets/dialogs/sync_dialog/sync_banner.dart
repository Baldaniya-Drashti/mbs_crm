import 'package:flutter/material.dart';
import 'package:mbs_crm/core/helper/sync_progress.dart';
import 'package:mbs_crm/core/helper/sync_service.dart';
import 'package:mbs_crm/injection.dart';
import 'package:mbs_crm/presentation/core/enum.dart';
import 'package:mbs_crm/presentation/core/widgets/dialogs/sync_dialog/sync_dialog_controller.dart';

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
          // return const SizedBox.shrink();
          SyncDialogController.hide(context);
          return const SizedBox.shrink();
        }

        if (progress.stage == SyncStage.syncingLocal ||
            progress.stage == SyncStage.fetchingServer) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            SyncDialogController.show(context);
          });
        } else {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            SyncDialogController.hide(context);
          });
        }
        return SizedBox.shrink();
      },
    );
  }
}
