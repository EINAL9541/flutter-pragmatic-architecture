import 'package:flutter_pragmatic_architecture/core/model/auth_info.dart' as model;
import 'package:flutter_pragmatic_architecture/core/storage/auth_info_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_info_provider.g.dart';

@Riverpod(keepAlive: true)
class AuthInfo extends _$AuthInfo {
  final _storage = AuthInfoStorage.instance;

  @override
  model.AuthInfo? build() => _storage.getAuthInfo();

  Future<void> save(model.AuthInfo authInfo) async {
    await _storage.saveAuthInfo(authInfo);
    state = authInfo;
  }

  Future<void> updateTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    final authInfo = state;
    if (authInfo == null) return;

    await save(
      authInfo.copyWith(accessToken: accessToken, refreshToken: refreshToken),
    );
  }

  Future<void> clear() async {
    await _storage.clearAuthInfo();
    state = null;
  }
}
