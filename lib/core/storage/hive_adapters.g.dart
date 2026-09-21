// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class AppSettingAdapter extends TypeAdapter<AppSetting> {
  @override
  final typeId = 0;

  @override
  AppSetting read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppSetting(
      isAutoSave: fields[0] as bool,
      isBiometricOpen: fields[1] as bool,
      locale: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AppSetting obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.isAutoSave)
      ..writeByte(1)
      ..write(obj.isBiometricOpen)
      ..writeByte(2)
      ..write(obj.locale);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AuthInfoAdapter extends TypeAdapter<AuthInfo> {
  @override
  final typeId = 1;

  @override
  AuthInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthInfo(
      id: fields[0] as String,
      name: fields[1] as String,
      email: fields[2] as String,
      accessToken: fields[3] as String,
      refreshToken: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AuthInfo obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.accessToken)
      ..writeByte(4)
      ..write(obj.refreshToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
