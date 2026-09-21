import 'package:flutter_pragmatic_architecture/core/model/app_setting.dart';
import 'package:hive_ce/hive.dart';

class AppSettingStorage {
  AppSettingStorage._();

  static final AppSettingStorage instance = AppSettingStorage._();

  static const _boxName = 'setting_box';
  static const _settingsKey = 'current_app_setting';

  Box<AppSetting>? _box;

  Box<AppSetting> get _ensuredBox {
    final box = _box;
    if (box == null || !box.isOpen) {
      throw StateError('AppSettingStorage must be initialized before access.');
    }
    return box;
  }

  Future<void> init(List<int> encryptionKey) async {
    _box = await Hive.openBox<AppSetting>(
      _boxName,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  AppSetting getSettings() {
    return _ensuredBox.get(_settingsKey) ?? AppSetting.defaults();
  }

  Future<void> saveSettings(AppSetting settings) async {
    await _ensuredBox.put(_settingsKey, settings);
  }

  bool get isAutoSave => getSettings().isAutoSave;
  bool get isBiometricOpen => getSettings().isBiometricOpen;
  String get locale => getSettings().locale;

  Future<void> setAutoSave(bool value) async {
    await saveSettings(getSettings().copyWith(isAutoSave: value));
  }

  Future<void> setBiometricOpen(bool value) async {
    await saveSettings(getSettings().copyWith(isBiometricOpen: value));
  }

  Future<void> setLocale(String value) async {
    await saveSettings(getSettings().copyWith(locale: value));
  }
}
