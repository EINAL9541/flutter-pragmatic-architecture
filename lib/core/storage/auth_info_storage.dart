import 'package:flutter_pragmatic_architecture/core/model/auth_info.dart';
import 'package:hive_ce/hive.dart';

class AuthInfoStorage {
  AuthInfoStorage._();

  static final AuthInfoStorage instance = AuthInfoStorage._();

  static const _boxName = 'auth_info_box';
  static const _authKey = 'current_auth_info';

  Box<AuthInfo>? _box;

  Box<AuthInfo> get _ensuredBox {
    final box = _box;
    if (box == null || !box.isOpen) {
      throw StateError('AuthInfoStorage must be initialized before access.');
    }
    return box;
  }

  Future<void> init(List<int> encryptionKey) async {
    _box = await Hive.openBox<AuthInfo>(
      _boxName,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  AuthInfo? getAuthInfo() {
    return _ensuredBox.get(_authKey);
  }

  Future<void> saveAuthInfo(AuthInfo authInfo) async {
    await _ensuredBox.put(_authKey, authInfo);
  }

  String? get accessToken => getAuthInfo()?.accessToken;
  String? get refreshToken => getAuthInfo()?.refreshToken;
  bool get isLoggedIn => getAuthInfo() != null;

  Future<void> updateTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    final current = getAuthInfo();
    if (current != null) {
      await saveAuthInfo(
        current.copyWith(accessToken: accessToken, refreshToken: refreshToken),
      );
    }
  }

  Future<void> clearAuthInfo() async {
    await _ensuredBox.delete(_authKey);
  }
}
