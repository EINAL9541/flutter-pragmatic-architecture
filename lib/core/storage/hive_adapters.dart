/// Defines every persisted type and keeps Hive-generated files in storage.
@GenerateAdapters([
  AdapterSpec<AppSetting>(),
  AdapterSpec<AuthInfo>(),
], firstTypeId: 0)
library;

import 'package:flutter_pragmatic_architecture/core/model/app_setting.dart';
import 'package:flutter_pragmatic_architecture/core/model/auth_info.dart';
import 'package:hive_ce/hive_ce.dart';

part 'hive_adapters.g.dart';
