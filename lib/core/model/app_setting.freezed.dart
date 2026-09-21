// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppSetting {

 bool get isAutoSave; bool get isBiometricOpen; String get locale;
/// Create a copy of AppSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingCopyWith<AppSetting> get copyWith => _$AppSettingCopyWithImpl<AppSetting>(this as AppSetting, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AppSetting;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSetting&&(identical(other.isAutoSave, _this.isAutoSave) || other.isAutoSave == _this.isAutoSave)&&(identical(other.isBiometricOpen, _this.isBiometricOpen) || other.isBiometricOpen == _this.isBiometricOpen)&&(identical(other.locale, _this.locale) || other.locale == _this.locale));
}


@override
int get hashCode {
  final _this = this as AppSetting;
  return Object.hash(runtimeType,_this.isAutoSave,_this.isBiometricOpen,_this.locale);
}

@override
String toString() {
  final _this = this as AppSetting;
  return 'AppSetting(isAutoSave: ${_this.isAutoSave}, isBiometricOpen: ${_this.isBiometricOpen}, locale: ${_this.locale})';
}


}

/// @nodoc
abstract mixin class $AppSettingCopyWith<$Res>  {
  factory $AppSettingCopyWith(AppSetting value, $Res Function(AppSetting) _then) = _$AppSettingCopyWithImpl;
@useResult
$Res call({
 bool isAutoSave, bool isBiometricOpen, String locale
});




}
/// @nodoc
class _$AppSettingCopyWithImpl<$Res>
    implements $AppSettingCopyWith<$Res> {
  _$AppSettingCopyWithImpl(this._self, this._then);

  final AppSetting _self;
  final $Res Function(AppSetting) _then;

/// Create a copy of AppSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAutoSave = null,Object? isBiometricOpen = null,Object? locale = null,}) {
  return _then(AppSetting(
isAutoSave: null == isAutoSave ? _self.isAutoSave : isAutoSave // ignore: cast_nullable_to_non_nullable
as bool,isBiometricOpen: null == isBiometricOpen ? _self.isBiometricOpen : isBiometricOpen // ignore: cast_nullable_to_non_nullable
as bool,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppSetting].
extension AppSettingPatterns on AppSetting {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppSetting() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppSetting value)  $default,){
final _that = this;
switch (_that) {
case _AppSetting():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppSetting value)?  $default,){
final _that = this;
switch (_that) {
case _AppSetting() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isAutoSave,  bool isBiometricOpen,  String locale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppSetting() when $default != null:
return $default(_that.isAutoSave,_that.isBiometricOpen,_that.locale);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isAutoSave,  bool isBiometricOpen,  String locale)  $default,) {final _that = this;
switch (_that) {
case _AppSetting():
return $default(_that.isAutoSave,_that.isBiometricOpen,_that.locale);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isAutoSave,  bool isBiometricOpen,  String locale)?  $default,) {final _that = this;
switch (_that) {
case _AppSetting() when $default != null:
return $default(_that.isAutoSave,_that.isBiometricOpen,_that.locale);case _:
  return null;

}
}

}

/// @nodoc


class _AppSetting implements AppSetting {
  const _AppSetting({required this.isAutoSave, required this.isBiometricOpen, required this.locale});
  

@override final  bool isAutoSave;
@override final  bool isBiometricOpen;
@override final  String locale;

/// Create a copy of AppSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppSettingCopyWith<_AppSetting> get copyWith => __$AppSettingCopyWithImpl<_AppSetting>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppSetting&&(identical(other.isAutoSave, isAutoSave) || other.isAutoSave == isAutoSave)&&(identical(other.isBiometricOpen, isBiometricOpen) || other.isBiometricOpen == isBiometricOpen)&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isAutoSave,isBiometricOpen,locale);
}

@override
String toString() {
    return 'AppSetting(isAutoSave: $isAutoSave, isBiometricOpen: $isBiometricOpen, locale: $locale)';
}


}

/// @nodoc
abstract mixin class _$AppSettingCopyWith<$Res> implements $AppSettingCopyWith<$Res> {
  factory _$AppSettingCopyWith(_AppSetting value, $Res Function(_AppSetting) _then) = __$AppSettingCopyWithImpl;
@override @useResult
$Res call({
 bool isAutoSave, bool isBiometricOpen, String locale
});




}
/// @nodoc
class __$AppSettingCopyWithImpl<$Res>
    implements _$AppSettingCopyWith<$Res> {
  __$AppSettingCopyWithImpl(this._self, this._then);

  final _AppSetting _self;
  final $Res Function(_AppSetting) _then;

/// Create a copy of AppSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAutoSave = null,Object? isBiometricOpen = null,Object? locale = null,}) {
  return _then(_AppSetting(
isAutoSave: null == isAutoSave ? _self.isAutoSave : isAutoSave // ignore: cast_nullable_to_non_nullable
as bool,isBiometricOpen: null == isBiometricOpen ? _self.isBiometricOpen : isBiometricOpen // ignore: cast_nullable_to_non_nullable
as bool,locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
