// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_confirmation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentConfirmation {

 String get transactionId; String get status;
/// Create a copy of PaymentConfirmation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentConfirmationCopyWith<PaymentConfirmation> get copyWith => _$PaymentConfirmationCopyWithImpl<PaymentConfirmation>(this as PaymentConfirmation, _$identity);

  /// Serializes this PaymentConfirmation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaymentConfirmation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentConfirmation&&(identical(other.transactionId, _this.transactionId) || other.transactionId == _this.transactionId)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaymentConfirmation;
  return Object.hash(runtimeType,_this.transactionId,_this.status);
}

@override
String toString() {
  final _this = this as PaymentConfirmation;
  return 'PaymentConfirmation(transactionId: ${_this.transactionId}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $PaymentConfirmationCopyWith<$Res>  {
  factory $PaymentConfirmationCopyWith(PaymentConfirmation value, $Res Function(PaymentConfirmation) _then) = _$PaymentConfirmationCopyWithImpl;
@useResult
$Res call({
 String transactionId, String status
});




}
/// @nodoc
class _$PaymentConfirmationCopyWithImpl<$Res>
    implements $PaymentConfirmationCopyWith<$Res> {
  _$PaymentConfirmationCopyWithImpl(this._self, this._then);

  final PaymentConfirmation _self;
  final $Res Function(PaymentConfirmation) _then;

/// Create a copy of PaymentConfirmation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? status = null,}) {
  return _then(PaymentConfirmation(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentConfirmation].
extension PaymentConfirmationPatterns on PaymentConfirmation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentConfirmation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentConfirmation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentConfirmation value)  $default,){
final _that = this;
switch (_that) {
case _PaymentConfirmation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentConfirmation value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentConfirmation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentConfirmation() when $default != null:
return $default(_that.transactionId,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String status)  $default,) {final _that = this;
switch (_that) {
case _PaymentConfirmation():
return $default(_that.transactionId,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String status)?  $default,) {final _that = this;
switch (_that) {
case _PaymentConfirmation() when $default != null:
return $default(_that.transactionId,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentConfirmation implements PaymentConfirmation {
  const _PaymentConfirmation({required this.transactionId, this.status = 'succeeded'});
  factory _PaymentConfirmation.fromJson(Map<String, dynamic> json) => _$PaymentConfirmationFromJson(json);

@override final  String transactionId;
@override@JsonKey() final  String status;

/// Create a copy of PaymentConfirmation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentConfirmationCopyWith<_PaymentConfirmation> get copyWith => __$PaymentConfirmationCopyWithImpl<_PaymentConfirmation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentConfirmationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentConfirmation&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,transactionId,status);
}

@override
String toString() {
    return 'PaymentConfirmation(transactionId: $transactionId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PaymentConfirmationCopyWith<$Res> implements $PaymentConfirmationCopyWith<$Res> {
  factory _$PaymentConfirmationCopyWith(_PaymentConfirmation value, $Res Function(_PaymentConfirmation) _then) = __$PaymentConfirmationCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String status
});




}
/// @nodoc
class __$PaymentConfirmationCopyWithImpl<$Res>
    implements _$PaymentConfirmationCopyWith<$Res> {
  __$PaymentConfirmationCopyWithImpl(this._self, this._then);

  final _PaymentConfirmation _self;
  final $Res Function(_PaymentConfirmation) _then;

/// Create a copy of PaymentConfirmation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? status = null,}) {
  return _then(_PaymentConfirmation(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
