import 'package:flutter/material.dart';
import 'package:mbs_crm/presentation/core/widgets/dialogs/sync_dialog/sync_progress_dialog.dart';

class SyncDialogController {
  static bool _isShowing = false;

  static void show(BuildContext context) {
    if (_isShowing) return;

    _isShowing = true;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const SyncProgressDialog(),
    );
  }

  static void hide(BuildContext context) {
    if (!_isShowing) return;

    _isShowing = false;
    Navigator.of(context, rootNavigator: true).pop();
  }
}
