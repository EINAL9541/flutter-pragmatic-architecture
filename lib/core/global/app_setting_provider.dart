import 'package:flutter_pragmatic_architecture/core/model/app_setting.dart' as model;
import 'package:flutter_pragmatic_architecture/core/storage/app_setting_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_setting_provider.g.dart';

@Riverpod(keepAlive: true)
class AppSetting extends _$AppSetting {
  final _storage = AppSettingStorage.instance;

  @override
  model.AppSetting build() => _storage.getSettings();

  Future<void> save(model.AppSetting settings) async {
    await _storage.saveSettings(settings);
    state = settings;
  }

  Future<void> setAutoSave(bool value) {
    return save(state.copyWith(isAutoSave: value));
  }

  Future<void> setBiometricOpen(bool value) {
    return save(state.copyWith(isBiometricOpen: value));
  }

  Future<void> setLocale(String value) {
    return save(state.copyWith(locale: value));
  }
}
