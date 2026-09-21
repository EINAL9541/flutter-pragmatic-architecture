// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_setting_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppSetting)
final appSettingProvider = AppSettingProvider._();

final class AppSettingProvider
    extends $NotifierProvider<AppSetting, model.AppSetting> {
  AppSettingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appSettingProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appSettingHash();

  @$internal
  @override
  AppSetting create() => AppSetting();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(model.AppSetting value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<model.AppSetting>(value),
    );
  }
}

String _$appSettingHash() => r'8bf89d98c398e60e057f6fa91b556cfca03e6a7d';

abstract class _$AppSetting extends $Notifier<model.AppSetting> {
  model.AppSetting build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<model.AppSetting, model.AppSetting>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<model.AppSetting, model.AppSetting>,
              model.AppSetting,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
