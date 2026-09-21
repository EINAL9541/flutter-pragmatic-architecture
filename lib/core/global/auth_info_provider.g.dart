// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthInfo)
final authInfoProvider = AuthInfoProvider._();

final class AuthInfoProvider
    extends $NotifierProvider<AuthInfo, model.AuthInfo?> {
  AuthInfoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authInfoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authInfoHash();

  @$internal
  @override
  AuthInfo create() => AuthInfo();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(model.AuthInfo? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<model.AuthInfo?>(value),
    );
  }
}

String _$authInfoHash() => r'6b29efd4fc5e8da4f1e8962d6c79540bbbb1a316';

abstract class _$AuthInfo extends $Notifier<model.AuthInfo?> {
  model.AuthInfo? build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<model.AuthInfo?, model.AuthInfo?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<model.AuthInfo?, model.AuthInfo?>,
              model.AuthInfo?,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
