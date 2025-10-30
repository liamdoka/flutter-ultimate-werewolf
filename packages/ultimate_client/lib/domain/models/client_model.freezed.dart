// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClientModel {

 String get id; WebSocketChannel get socket; String? get nickname; String? get roomCode;
/// Create a copy of ClientModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientModelCopyWith<ClientModel> get copyWith => _$ClientModelCopyWithImpl<ClientModel>(this as ClientModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientModel&&(identical(other.id, id) || other.id == id)&&(identical(other.socket, socket) || other.socket == socket)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode));
}


@override
int get hashCode => Object.hash(runtimeType,id,socket,nickname,roomCode);

@override
String toString() {
  return 'ClientModel(id: $id, socket: $socket, nickname: $nickname, roomCode: $roomCode)';
}


}

/// @nodoc
abstract mixin class $ClientModelCopyWith<$Res>  {
  factory $ClientModelCopyWith(ClientModel value, $Res Function(ClientModel) _then) = _$ClientModelCopyWithImpl;
@useResult
$Res call({
 String id, WebSocketChannel socket, String? nickname, String? roomCode
});




}
/// @nodoc
class _$ClientModelCopyWithImpl<$Res>
    implements $ClientModelCopyWith<$Res> {
  _$ClientModelCopyWithImpl(this._self, this._then);

  final ClientModel _self;
  final $Res Function(ClientModel) _then;

/// Create a copy of ClientModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? socket = null,Object? nickname = freezed,Object? roomCode = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,socket: null == socket ? _self.socket : socket // ignore: cast_nullable_to_non_nullable
as WebSocketChannel,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClientModel].
extension ClientModelPatterns on ClientModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClientModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClientModel value)  $default,){
final _that = this;
switch (_that) {
case _ClientModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClientModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClientModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  WebSocketChannel socket,  String? nickname,  String? roomCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientModel() when $default != null:
return $default(_that.id,_that.socket,_that.nickname,_that.roomCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  WebSocketChannel socket,  String? nickname,  String? roomCode)  $default,) {final _that = this;
switch (_that) {
case _ClientModel():
return $default(_that.id,_that.socket,_that.nickname,_that.roomCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  WebSocketChannel socket,  String? nickname,  String? roomCode)?  $default,) {final _that = this;
switch (_that) {
case _ClientModel() when $default != null:
return $default(_that.id,_that.socket,_that.nickname,_that.roomCode);case _:
  return null;

}
}

}

/// @nodoc


class _ClientModel extends ClientModel {
  const _ClientModel({required this.id, required this.socket, this.nickname, this.roomCode}): super._();
  

@override final  String id;
@override final  WebSocketChannel socket;
@override final  String? nickname;
@override final  String? roomCode;

/// Create a copy of ClientModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientModelCopyWith<_ClientModel> get copyWith => __$ClientModelCopyWithImpl<_ClientModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientModel&&(identical(other.id, id) || other.id == id)&&(identical(other.socket, socket) || other.socket == socket)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode));
}


@override
int get hashCode => Object.hash(runtimeType,id,socket,nickname,roomCode);

@override
String toString() {
  return 'ClientModel(id: $id, socket: $socket, nickname: $nickname, roomCode: $roomCode)';
}


}

/// @nodoc
abstract mixin class _$ClientModelCopyWith<$Res> implements $ClientModelCopyWith<$Res> {
  factory _$ClientModelCopyWith(_ClientModel value, $Res Function(_ClientModel) _then) = __$ClientModelCopyWithImpl;
@override @useResult
$Res call({
 String id, WebSocketChannel socket, String? nickname, String? roomCode
});




}
/// @nodoc
class __$ClientModelCopyWithImpl<$Res>
    implements _$ClientModelCopyWith<$Res> {
  __$ClientModelCopyWithImpl(this._self, this._then);

  final _ClientModel _self;
  final $Res Function(_ClientModel) _then;

/// Create a copy of ClientModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? socket = null,Object? nickname = freezed,Object? roomCode = freezed,}) {
  return _then(_ClientModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,socket: null == socket ? _self.socket : socket // ignore: cast_nullable_to_non_nullable
as WebSocketChannel,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
