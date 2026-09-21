import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../network/network_exception.dart';
import '../storage/auth_info_storage.dart';
import '../ui/dialogs/error_dialog.dart';
import '../ui/dialogs/loading_dialog.dart';
import '../ui/dialogs/logout_dialog.dart';

extension SafeCallContext on BuildContext {
  Future<T?> safeCall<T>({
    required Future<T> Function() action,
    bool showLoading = true,
    bool Function(NetworkException error)? onError,
    void Function(T data)? onSuccess,
  }) async {
    bool isDialogShowing = false;

    if (showLoading && mounted) {
      LoadingDialog.show(this);
      isDialogShowing = true;
    }

    try {
      final result = await action();

      _hideLoading(isDialogShowing);
      if (!mounted) return null;

      if (result != null) onSuccess?.call(result);
      return result;
    } catch (error) {
      final networkError = NetworkException.fromError(error);

      _hideLoading(isDialogShowing);
      if (!mounted) return null;

      final callerHandled = onError?.call(networkError) ?? false;
      if (callerHandled) return null;

      if (mounted) await _handleError(networkError);
      return null;
    }
  }

  Future<void> _handleError(NetworkException error) async {
    switch (error.statusCode) {
      case 400:
      case 403:
        await ErrorDialog.show(this, message: error.message);
        return;
      case 406:
        await ErrorDialog.show(this, message: 'New device detected.');
        return;
      case 408:
        await _showLogoutDialog('Account is closed.');
        return;
      case 418:
        await _showLogoutDialog(
          'Your session has timed out. Please log in again.',
        );
        return;
      case 500:
        await ErrorDialog.show(
          this,
          message: 'Something went wrong. Please try again later.',
        );
        return;
      default:
        await ErrorDialog.show(this, message: 'An unexpected error occurred.');
    }
  }

  Future<void> _showLogoutDialog(String message) {
    return LogoutDialog.show(this, message: message, onLogout: _logout);
  }

  Future<void> _logout() async {
    await AuthInfoStorage.instance.clearAuthInfo();
    if (mounted) go('/login');
  }

  void _hideLoading(bool isShowing) {
    if (isShowing && mounted) LoadingDialog.hide(this);
  }
}
