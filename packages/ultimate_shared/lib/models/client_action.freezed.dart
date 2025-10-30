// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClientAction {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClientAction()';
}


}

/// @nodoc
class $ClientActionCopyWith<$Res>  {
$ClientActionCopyWith(ClientAction _, $Res Function(ClientAction) __);
}


/// Adds pattern-matching-related methods to [ClientAction].
extension ClientActionPatterns on ClientAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ClientChangeSocket value)?  changeSocket,TResult Function( ClientChangeNickname value)?  changeNickname,TResult Function( ClientChangeRoomCode value)?  changeRoomCode,TResult Function( ClientJoinRoom value)?  joinRoom,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ClientChangeSocket() when changeSocket != null:
return changeSocket(_that);case ClientChangeNickname() when changeNickname != null:
return changeNickname(_that);case ClientChangeRoomCode() when changeRoomCode != null:
return changeRoomCode(_that);case ClientJoinRoom() when joinRoom != null:
return joinRoom(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ClientChangeSocket value)  changeSocket,required TResult Function( ClientChangeNickname value)  changeNickname,required TResult Function( ClientChangeRoomCode value)  changeRoomCode,required TResult Function( ClientJoinRoom value)  joinRoom,}){
final _that = this;
switch (_that) {
case ClientChangeSocket():
return changeSocket(_that);case ClientChangeNickname():
return changeNickname(_that);case ClientChangeRoomCode():
return changeRoomCode(_that);case ClientJoinRoom():
return joinRoom(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ClientChangeSocket value)?  changeSocket,TResult? Function( ClientChangeNickname value)?  changeNickname,TResult? Function( ClientChangeRoomCode value)?  changeRoomCode,TResult? Function( ClientJoinRoom value)?  joinRoom,}){
final _that = this;
switch (_that) {
case ClientChangeSocket() when changeSocket != null:
return changeSocket(_that);case ClientChangeNickname() when changeNickname != null:
return changeNickname(_that);case ClientChangeRoomCode() when changeRoomCode != null:
return changeRoomCode(_that);case ClientJoinRoom() when joinRoom != null:
return joinRoom(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( WebSocketChannel socket)?  changeSocket,TResult Function( String nickname)?  changeNickname,TResult Function( String roomCode)?  changeRoomCode,TResult Function( String nickname,  String roomCode)?  joinRoom,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ClientChangeSocket() when changeSocket != null:
return changeSocket(_that.socket);case ClientChangeNickname() when changeNickname != null:
return changeNickname(_that.nickname);case ClientChangeRoomCode() when changeRoomCode != null:
return changeRoomCode(_that.roomCode);case ClientJoinRoom() when joinRoom != null:
return joinRoom(_that.nickname,_that.roomCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( WebSocketChannel socket)  changeSocket,required TResult Function( String nickname)  changeNickname,required TResult Function( String roomCode)  changeRoomCode,required TResult Function( String nickname,  String roomCode)  joinRoom,}) {final _that = this;
switch (_that) {
case ClientChangeSocket():
return changeSocket(_that.socket);case ClientChangeNickname():
return changeNickname(_that.nickname);case ClientChangeRoomCode():
return changeRoomCode(_that.roomCode);case ClientJoinRoom():
return joinRoom(_that.nickname,_that.roomCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( WebSocketChannel socket)?  changeSocket,TResult? Function( String nickname)?  changeNickname,TResult? Function( String roomCode)?  changeRoomCode,TResult? Function( String nickname,  String roomCode)?  joinRoom,}) {final _that = this;
switch (_that) {
case ClientChangeSocket() when changeSocket != null:
return changeSocket(_that.socket);case ClientChangeNickname() when changeNickname != null:
return changeNickname(_that.nickname);case ClientChangeRoomCode() when changeRoomCode != null:
return changeRoomCode(_that.roomCode);case ClientJoinRoom() when joinRoom != null:
return joinRoom(_that.nickname,_that.roomCode);case _:
  return null;

}
}

}

/// @nodoc


class ClientChangeSocket implements ClientAction {
  const ClientChangeSocket(this.socket);
  

 final  WebSocketChannel socket;

/// Create a copy of ClientAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientChangeSocketCopyWith<ClientChangeSocket> get copyWith => _$ClientChangeSocketCopyWithImpl<ClientChangeSocket>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientChangeSocket&&(identical(other.socket, socket) || other.socket == socket));
}


@override
int get hashCode => Object.hash(runtimeType,socket);

@override
String toString() {
  return 'ClientAction.changeSocket(socket: $socket)';
}


}

/// @nodoc
abstract mixin class $ClientChangeSocketCopyWith<$Res> implements $ClientActionCopyWith<$Res> {
  factory $ClientChangeSocketCopyWith(ClientChangeSocket value, $Res Function(ClientChangeSocket) _then) = _$ClientChangeSocketCopyWithImpl;
@useResult
$Res call({
 WebSocketChannel socket
});




}
/// @nodoc
class _$ClientChangeSocketCopyWithImpl<$Res>
    implements $ClientChangeSocketCopyWith<$Res> {
  _$ClientChangeSocketCopyWithImpl(this._self, this._then);

  final ClientChangeSocket _self;
  final $Res Function(ClientChangeSocket) _then;

/// Create a copy of ClientAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? socket = null,}) {
  return _then(ClientChangeSocket(
null == socket ? _self.socket : socket // ignore: cast_nullable_to_non_nullable
as WebSocketChannel,
  ));
}


}

/// @nodoc


class ClientChangeNickname implements ClientAction {
  const ClientChangeNickname(this.nickname);
  

 final  String nickname;

/// Create a copy of ClientAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientChangeNicknameCopyWith<ClientChangeNickname> get copyWith => _$ClientChangeNicknameCopyWithImpl<ClientChangeNickname>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientChangeNickname&&(identical(other.nickname, nickname) || other.nickname == nickname));
}


@override
int get hashCode => Object.hash(runtimeType,nickname);

@override
String toString() {
  return 'ClientAction.changeNickname(nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class $ClientChangeNicknameCopyWith<$Res> implements $ClientActionCopyWith<$Res> {
  factory $ClientChangeNicknameCopyWith(ClientChangeNickname value, $Res Function(ClientChangeNickname) _then) = _$ClientChangeNicknameCopyWithImpl;
@useResult
$Res call({
 String nickname
});




}
/// @nodoc
class _$ClientChangeNicknameCopyWithImpl<$Res>
    implements $ClientChangeNicknameCopyWith<$Res> {
  _$ClientChangeNicknameCopyWithImpl(this._self, this._then);

  final ClientChangeNickname _self;
  final $Res Function(ClientChangeNickname) _then;

/// Create a copy of ClientAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nickname = null,}) {
  return _then(ClientChangeNickname(
null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClientChangeRoomCode implements ClientAction {
  const ClientChangeRoomCode(this.roomCode);
  

 final  String roomCode;

/// Create a copy of ClientAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientChangeRoomCodeCopyWith<ClientChangeRoomCode> get copyWith => _$ClientChangeRoomCodeCopyWithImpl<ClientChangeRoomCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientChangeRoomCode&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode));
}


@override
int get hashCode => Object.hash(runtimeType,roomCode);

@override
String toString() {
  return 'ClientAction.changeRoomCode(roomCode: $roomCode)';
}


}

/// @nodoc
abstract mixin class $ClientChangeRoomCodeCopyWith<$Res> implements $ClientActionCopyWith<$Res> {
  factory $ClientChangeRoomCodeCopyWith(ClientChangeRoomCode value, $Res Function(ClientChangeRoomCode) _then) = _$ClientChangeRoomCodeCopyWithImpl;
@useResult
$Res call({
 String roomCode
});




}
/// @nodoc
class _$ClientChangeRoomCodeCopyWithImpl<$Res>
    implements $ClientChangeRoomCodeCopyWith<$Res> {
  _$ClientChangeRoomCodeCopyWithImpl(this._self, this._then);

  final ClientChangeRoomCode _self;
  final $Res Function(ClientChangeRoomCode) _then;

/// Create a copy of ClientAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomCode = null,}) {
  return _then(ClientChangeRoomCode(
null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClientJoinRoom implements ClientAction {
  const ClientJoinRoom(this.nickname, this.roomCode);
  

 final  String nickname;
 final  String roomCode;

/// Create a copy of ClientAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientJoinRoomCopyWith<ClientJoinRoom> get copyWith => _$ClientJoinRoomCopyWithImpl<ClientJoinRoom>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientJoinRoom&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode));
}


@override
int get hashCode => Object.hash(runtimeType,nickname,roomCode);

@override
String toString() {
  return 'ClientAction.joinRoom(nickname: $nickname, roomCode: $roomCode)';
}


}

/// @nodoc
abstract mixin class $ClientJoinRoomCopyWith<$Res> implements $ClientActionCopyWith<$Res> {
  factory $ClientJoinRoomCopyWith(ClientJoinRoom value, $Res Function(ClientJoinRoom) _then) = _$ClientJoinRoomCopyWithImpl;
@useResult
$Res call({
 String nickname, String roomCode
});




}
/// @nodoc
class _$ClientJoinRoomCopyWithImpl<$Res>
    implements $ClientJoinRoomCopyWith<$Res> {
  _$ClientJoinRoomCopyWithImpl(this._self, this._then);

  final ClientJoinRoom _self;
  final $Res Function(ClientJoinRoom) _then;

/// Create a copy of ClientAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nickname = null,Object? roomCode = null,}) {
  return _then(ClientJoinRoom(
null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
