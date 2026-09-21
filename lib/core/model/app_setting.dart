import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting.freezed.dart';

@freezed
abstract class AppSetting with _$AppSetting {
  const factory AppSetting({
    required bool isAutoSave,
    required bool isBiometricOpen,
    required String locale,
  }) = _AppSetting;

  factory AppSetting.defaults() =>
      const AppSetting(isAutoSave: true, isBiometricOpen: false, locale: 'en');
}
