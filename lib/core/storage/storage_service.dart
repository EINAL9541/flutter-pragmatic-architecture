import 'dart:convert';

import 'package:flutter_pragmatic_architecture/core/storage/app_setting_storage.dart';
import 'package:flutter_pragmatic_architecture/core/storage/auth_info_storage.dart';
import 'package:flutter_pragmatic_architecture/core/storage/hive_registrar.g.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

class StorageService {
  static const _hiveKeyName = 'com.example.base';

  final _secureStorage = const FlutterSecureStorage(aOptions: AndroidOptions());

  late final AppSettingStorage settingsStorage;
  late final AuthInfoStorage authInfoStorage;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapters();

    final encryptionKey = await _getOrCreateEncryptionKey();

    settingsStorage = AppSettingStorage.instance;
    await settingsStorage.init(encryptionKey);

    authInfoStorage = AuthInfoStorage.instance;
    await authInfoStorage.init(encryptionKey);
  }

  Future<List<int>> _getOrCreateEncryptionKey() async {
    try {
      final existingKey = await _secureStorage.read(key: _hiveKeyName);
      if (existingKey != null) {
        return base64Url.decode(existingKey);
      }
    } catch (_) {
      await _secureStorage.delete(key: _hiveKeyName);
    }

    final key = Hive.generateSecureKey();
    await _secureStorage.write(key: _hiveKeyName, value: base64UrlEncode(key));
    return key;
  }
}
