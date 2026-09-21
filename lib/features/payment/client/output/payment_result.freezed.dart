// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PinValidationResult {

 String get authorizationToken;
/// Create a copy of PinValidationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinValidationResultCopyWith<PinValidationResult> get copyWith => _$PinValidationResultCopyWithImpl<PinValidationResult>(this as PinValidationResult, _$identity);

  /// Serializes this PinValidationResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PinValidationResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinValidationResult&&(identical(other.authorizationToken, _this.authorizationToken) || other.authorizationToken == _this.authorizationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PinValidationResult;
  return Object.hash(runtimeType,_this.authorizationToken);
}

@override
String toString() {
  final _this = this as PinValidationResult;
  return 'PinValidationResult(authorizationToken: ${_this.authorizationToken})';
}


}

/// @nodoc
abstract mixin class $PinValidationResultCopyWith<$Res>  {
  factory $PinValidationResultCopyWith(PinValidationResult value, $Res Function(PinValidationResult) _then) = _$PinValidationResultCopyWithImpl;
@useResult
$Res call({
 String authorizationToken
});




}
/// @nodoc
class _$PinValidationResultCopyWithImpl<$Res>
    implements $PinValidationResultCopyWith<$Res> {
  _$PinValidationResultCopyWithImpl(this._self, this._then);

  final PinValidationResult _self;
  final $Res Function(PinValidationResult) _then;

/// Create a copy of PinValidationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authorizationToken = null,}) {
  return _then(PinValidationResult(
authorizationToken: null == authorizationToken ? _self.authorizationToken : authorizationToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PinValidationResult].
extension PinValidationResultPatterns on PinValidationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PinValidationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PinValidationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PinValidationResult value)  $default,){
final _that = this;
switch (_that) {
case _PinValidationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PinValidationResult value)?  $default,){
final _that = this;
switch (_that) {
case _PinValidationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String authorizationToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PinValidationResult() when $default != null:
return $default(_that.authorizationToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String authorizationToken)  $default,) {final _that = this;
switch (_that) {
case _PinValidationResult():
return $default(_that.authorizationToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String authorizationToken)?  $default,) {final _that = this;
switch (_that) {
case _PinValidationResult() when $default != null:
return $default(_that.authorizationToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PinValidationResult implements PinValidationResult {
  const _PinValidationResult({required this.authorizationToken});
  factory _PinValidationResult.fromJson(Map<String, dynamic> json) => _$PinValidationResultFromJson(json);

@override final  String authorizationToken;

/// Create a copy of PinValidationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PinValidationResultCopyWith<_PinValidationResult> get copyWith => __$PinValidationResultCopyWithImpl<_PinValidationResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PinValidationResultToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PinValidationResult&&(identical(other.authorizationToken, authorizationToken) || other.authorizationToken == authorizationToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,authorizationToken);
}

@override
String toString() {
    return 'PinValidationResult(authorizationToken: $authorizationToken)';
}


}

/// @nodoc
abstract mixin class _$PinValidationResultCopyWith<$Res> implements $PinValidationResultCopyWith<$Res> {
  factory _$PinValidationResultCopyWith(_PinValidationResult value, $Res Function(_PinValidationResult) _then) = __$PinValidationResultCopyWithImpl;
@override @useResult
$Res call({
 String authorizationToken
});




}
/// @nodoc
class __$PinValidationResultCopyWithImpl<$Res>
    implements _$PinValidationResultCopyWith<$Res> {
  __$PinValidationResultCopyWithImpl(this._self, this._then);

  final _PinValidationResult _self;
  final $Res Function(_PinValidationResult) _then;

/// Create a copy of PinValidationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authorizationToken = null,}) {
  return _then(_PinValidationResult(
authorizationToken: null == authorizationToken ? _self.authorizationToken : authorizationToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
