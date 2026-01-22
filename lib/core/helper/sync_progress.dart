import 'package:mbs_crm/presentation/core/enum.dart';

class SyncProgress {
  final SyncStage stage;
  final String message;
  final double progress;

  const SyncProgress({
    required this.stage,
    required this.message,
    required this.progress,
  });

  static const idle = SyncProgress(
    stage: SyncStage.idle,
    message: '',
    progress: 0,
  );
}
