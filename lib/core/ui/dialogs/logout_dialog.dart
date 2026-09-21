import 'package:flutter/material.dart';

abstract class LogoutDialog {
  static Future<void> show(
    BuildContext context, {
    required String message,
    required Future<void> Function() onLogout,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => PopScope(
        canPop: false,
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          icon: Icon(
            Icons.error_outline_rounded,
            size: 40,
            color: Theme.of(dialogContext).colorScheme.error,
          ),
          content: Text(message, textAlign: TextAlign.center),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            FilledButton.icon(
              icon: const Icon(Icons.logout_rounded),
              label: const Text('Logout'),
              onPressed: () async {
                Navigator.of(dialogContext).pop();
                await onLogout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
