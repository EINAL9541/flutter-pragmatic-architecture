// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_transaction_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfirmTransactionPayload {

 String get orderId; String get authorizationToken; String get idempotencyKey;
/// Create a copy of ConfirmTransactionPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmTransactionPayloadCopyWith<ConfirmTransactionPayload> get copyWith => _$ConfirmTransactionPayloadCopyWithImpl<ConfirmTransactionPayload>(this as ConfirmTransactionPayload, _$identity);

  /// Serializes this ConfirmTransactionPayload to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ConfirmTransactionPayload;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmTransactionPayload&&(identical(other.orderId, _this.orderId) || other.orderId == _this.orderId)&&(identical(other.authorizationToken, _this.authorizationToken) || other.authorizationToken == _this.authorizationToken)&&(identical(other.idempotencyKey, _this.idempotencyKey) || other.idempotencyKey == _this.idempotencyKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ConfirmTransactionPayload;
  return Object.hash(runtimeType,_this.orderId,_this.authorizationToken,_this.idempotencyKey);
}

@override
String toString() {
  final _this = this as ConfirmTransactionPayload;
  return 'ConfirmTransactionPayload(orderId: ${_this.orderId}, authorizationToken: ${_this.authorizationToken}, idempotencyKey: ${_this.idempotencyKey})';
}


}

/// @nodoc
abstract mixin class $ConfirmTransactionPayloadCopyWith<$Res>  {
  factory $ConfirmTransactionPayloadCopyWith(ConfirmTransactionPayload value, $Res Function(ConfirmTransactionPayload) _then) = _$ConfirmTransactionPayloadCopyWithImpl;
@useResult
$Res call({
 String orderId, String authorizationToken, String idempotencyKey
});




}
/// @nodoc
class _$ConfirmTransactionPayloadCopyWithImpl<$Res>
    implements $ConfirmTransactionPayloadCopyWith<$Res> {
  _$ConfirmTransactionPayloadCopyWithImpl(this._self, this._then);

  final ConfirmTransactionPayload _self;
  final $Res Function(ConfirmTransactionPayload) _then;

/// Create a copy of ConfirmTransactionPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? authorizationToken = null,Object? idempotencyKey = null,}) {
  return _then(ConfirmTransactionPayload(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,authorizationToken: null == authorizationToken ? _self.authorizationToken : authorizationToken // ignore: cast_nullable_to_non_nullable
as String,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfirmTransactionPayload].
extension ConfirmTransactionPayloadPatterns on ConfirmTransactionPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmTransactionPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmTransactionPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmTransactionPayload value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmTransactionPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmTransactionPayload value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmTransactionPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  String authorizationToken,  String idempotencyKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmTransactionPayload() when $default != null:
return $default(_that.orderId,_that.authorizationToken,_that.idempotencyKey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  String authorizationToken,  String idempotencyKey)  $default,) {final _that = this;
switch (_that) {
case _ConfirmTransactionPayload():
return $default(_that.orderId,_that.authorizationToken,_that.idempotencyKey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  String authorizationToken,  String idempotencyKey)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmTransactionPayload() when $default != null:
return $default(_that.orderId,_that.authorizationToken,_that.idempotencyKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfirmTransactionPayload implements ConfirmTransactionPayload {
  const _ConfirmTransactionPayload({required this.orderId, required this.authorizationToken, required this.idempotencyKey});
  factory _ConfirmTransactionPayload.fromJson(Map<String, dynamic> json) => _$ConfirmTransactionPayloadFromJson(json);

@override final  String orderId;
@override final  String authorizationToken;
@override final  String idempotencyKey;

/// Create a copy of ConfirmTransactionPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmTransactionPayloadCopyWith<_ConfirmTransactionPayload> get copyWith => __$ConfirmTransactionPayloadCopyWithImpl<_ConfirmTransactionPayload>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfirmTransactionPayloadToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmTransactionPayload&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.authorizationToken, authorizationToken) || other.authorizationToken == authorizationToken)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,orderId,authorizationToken,idempotencyKey);
}

@override
String toString() {
    return 'ConfirmTransactionPayload(orderId: $orderId, authorizationToken: $authorizationToken, idempotencyKey: $idempotencyKey)';
}


}

/// @nodoc
abstract mixin class _$ConfirmTransactionPayloadCopyWith<$Res> implements $ConfirmTransactionPayloadCopyWith<$Res> {
  factory _$ConfirmTransactionPayloadCopyWith(_ConfirmTransactionPayload value, $Res Function(_ConfirmTransactionPayload) _then) = __$ConfirmTransactionPayloadCopyWithImpl;
@override @useResult
$Res call({
 String orderId, String authorizationToken, String idempotencyKey
});




}
/// @nodoc
class __$ConfirmTransactionPayloadCopyWithImpl<$Res>
    implements _$ConfirmTransactionPayloadCopyWith<$Res> {
  __$ConfirmTransactionPayloadCopyWithImpl(this._self, this._then);

  final _ConfirmTransactionPayload _self;
  final $Res Function(_ConfirmTransactionPayload) _then;

/// Create a copy of ConfirmTransactionPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? authorizationToken = null,Object? idempotencyKey = null,}) {
  return _then(_ConfirmTransactionPayload(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,authorizationToken: null == authorizationToken ? _self.authorizationToken : authorizationToken // ignore: cast_nullable_to_non_nullable
as String,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
