// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_pin_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidatePinPayload {

 String get pin; String get orderId;
/// Create a copy of ValidatePinPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidatePinPayloadCopyWith<ValidatePinPayload> get copyWith => _$ValidatePinPayloadCopyWithImpl<ValidatePinPayload>(this as ValidatePinPayload, _$identity);

  /// Serializes this ValidatePinPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ValidatePinPayload;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidatePinPayload&&(identical(other.pin, _this.pin) || other.pin == _this.pin)&&(identical(other.orderId, _this.orderId) || other.orderId == _this.orderId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ValidatePinPayload;
  return Object.hash(runtimeType,_this.pin,_this.orderId);
}

@override
String toString() {
  final _this = this as ValidatePinPayload;
  return 'ValidatePinPayload(pin: ${_this.pin}, orderId: ${_this.orderId})';
}


}

/// @nodoc
abstract mixin class $ValidatePinPayloadCopyWith<$Res>  {
  factory $ValidatePinPayloadCopyWith(ValidatePinPayload value, $Res Function(ValidatePinPayload) _then) = _$ValidatePinPayloadCopyWithImpl;
@useResult
$Res call({
 String pin, String orderId
});




}
/// @nodoc
class _$ValidatePinPayloadCopyWithImpl<$Res>
    implements $ValidatePinPayloadCopyWith<$Res> {
  _$ValidatePinPayloadCopyWithImpl(this._self, this._then);

  final ValidatePinPayload _self;
  final $Res Function(ValidatePinPayload) _then;

/// Create a copy of ValidatePinPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pin = null,Object? orderId = null,}) {
  return _then(ValidatePinPayload(
pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ValidatePinPayload].
extension ValidatePinPayloadPatterns on ValidatePinPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ValidatePinPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValidatePinPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ValidatePinPayload value)  $default,){
final _that = this;
switch (_that) {
case _ValidatePinPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ValidatePinPayload value)?  $default,){
final _that = this;
switch (_that) {
case _ValidatePinPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String pin,  String orderId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValidatePinPayload() when $default != null:
return $default(_that.pin,_that.orderId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String pin,  String orderId)  $default,) {final _that = this;
switch (_that) {
case _ValidatePinPayload():
return $default(_that.pin,_that.orderId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String pin,  String orderId)?  $default,) {final _that = this;
switch (_that) {
case _ValidatePinPayload() when $default != null:
return $default(_that.pin,_that.orderId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ValidatePinPayload implements ValidatePinPayload {
  const _ValidatePinPayload({required this.pin, required this.orderId});
  factory _ValidatePinPayload.fromJson(Map<String, dynamic> json) => _$ValidatePinPayloadFromJson(json);

@override final  String pin;
@override final  String orderId;

/// Create a copy of ValidatePinPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidatePinPayloadCopyWith<_ValidatePinPayload> get copyWith => __$ValidatePinPayloadCopyWithImpl<_ValidatePinPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidatePinPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidatePinPayload&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.orderId, orderId) || other.orderId == orderId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,pin,orderId);
}

@override
String toString() {
    return 'ValidatePinPayload(pin: $pin, orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class _$ValidatePinPayloadCopyWith<$Res> implements $ValidatePinPayloadCopyWith<$Res> {
  factory _$ValidatePinPayloadCopyWith(_ValidatePinPayload value, $Res Function(_ValidatePinPayload) _then) = __$ValidatePinPayloadCopyWithImpl;
@override @useResult
$Res call({
 String pin, String orderId
});




}
/// @nodoc
class __$ValidatePinPayloadCopyWithImpl<$Res>
    implements _$ValidatePinPayloadCopyWith<$Res> {
  __$ValidatePinPayloadCopyWithImpl(this._self, this._then);

  final _ValidatePinPayload _self;
  final $Res Function(_ValidatePinPayload) _then;

/// Create a copy of ValidatePinPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pin = null,Object? orderId = null,}) {
  return _then(_ValidatePinPayload(
pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
