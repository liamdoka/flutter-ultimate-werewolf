// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActionModel {

 ActionType get type; dynamic get payload;
/// Create a copy of ActionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActionModelCopyWith<ActionModel> get copyWith => _$ActionModelCopyWithImpl<ActionModel>(this as ActionModel, _$identity);

  /// Serializes this ActionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActionModel&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.payload, payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'ActionModel(type: $type, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $ActionModelCopyWith<$Res>  {
  factory $ActionModelCopyWith(ActionModel value, $Res Function(ActionModel) _then) = _$ActionModelCopyWithImpl;
@useResult
$Res call({
 ActionType type, dynamic payload
});




}
/// @nodoc
class _$ActionModelCopyWithImpl<$Res>
    implements $ActionModelCopyWith<$Res> {
  _$ActionModelCopyWithImpl(this._self, this._then);

  final ActionModel _self;
  final $Res Function(ActionModel) _then;

/// Create a copy of ActionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? payload = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ActionType,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ActionModel].
extension ActionModelPatterns on ActionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActionModel value)  $default,){
final _that = this;
switch (_that) {
case _ActionModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActionModel value)?  $default,){
final _that = this;
switch (_that) {
case _ActionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ActionType type,  dynamic payload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActionModel() when $default != null:
return $default(_that.type,_that.payload);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ActionType type,  dynamic payload)  $default,) {final _that = this;
switch (_that) {
case _ActionModel():
return $default(_that.type,_that.payload);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ActionType type,  dynamic payload)?  $default,) {final _that = this;
switch (_that) {
case _ActionModel() when $default != null:
return $default(_that.type,_that.payload);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActionModel implements ActionModel {
  const _ActionModel({required this.type, this.payload});
  factory _ActionModel.fromJson(Map<String, dynamic> json) => _$ActionModelFromJson(json);

@override final  ActionType type;
@override final  dynamic payload;

/// Create a copy of ActionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionModelCopyWith<_ActionModel> get copyWith => __$ActionModelCopyWithImpl<_ActionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionModel&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.payload, payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'ActionModel(type: $type, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$ActionModelCopyWith<$Res> implements $ActionModelCopyWith<$Res> {
  factory _$ActionModelCopyWith(_ActionModel value, $Res Function(_ActionModel) _then) = __$ActionModelCopyWithImpl;
@override @useResult
$Res call({
 ActionType type, dynamic payload
});




}
/// @nodoc
class __$ActionModelCopyWithImpl<$Res>
    implements _$ActionModelCopyWith<$Res> {
  __$ActionModelCopyWithImpl(this._self, this._then);

  final _ActionModel _self;
  final $Res Function(_ActionModel) _then;

/// Create a copy of ActionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? payload = freezed,}) {
  return _then(_ActionModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ActionType,payload: freezed == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
