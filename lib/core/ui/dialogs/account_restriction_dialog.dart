import 'package:flutter/material.dart';

abstract class AccountRestrictionDialog {
  static Future<void> show(
    BuildContext context, {
    required String message,
    required VoidCallback onLogout,
    VoidCallback? onContactBank,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => _AccountRestrictionDialogContent(
        message: message,
        onLogout: onLogout,
        onContactBank: onContactBank ?? _defaultContactBank,
      ),
    );
  }

  static void _defaultContactBank() {
    // TODO: Replace with real contact flow (url_launcher, in-app support, etc.)
    debugPrint('[AccountRestrictionDialog] Contact Bank tapped — implement real action.');
  }
}

class _AccountRestrictionDialogContent extends StatelessWidget {
  final String message;
  final VoidCallback onLogout;
  final VoidCallback onContactBank;

  const _AccountRestrictionDialogContent({
    required this.message,
    required this.onLogout,
    required this.onContactBank,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      icon: Icon(
        Icons.block_rounded,
        size: 48,
        color: theme.colorScheme.error,
      ),
      title: Text(
        'Account Restricted',
        textAlign: TextAlign.center,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.onSurface.withValues(alpha: 0.8),
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        OutlinedButton.icon(
          icon: const Icon(Icons.phone_outlined),
          label: const Text('Contact Bank'),
          onPressed: () {
            Navigator.of(context).pop();
            onContactBank();
          },
        ),
        FilledButton.icon(
          icon: const Icon(Icons.logout_rounded),
          label: const Text('Logout'),
          style: FilledButton.styleFrom(
            backgroundColor: theme.colorScheme.error,
          ),
          onPressed: () {
            Navigator.of(context).pop();
            onLogout();
          },
        ),
      ],
    );
  }
}
