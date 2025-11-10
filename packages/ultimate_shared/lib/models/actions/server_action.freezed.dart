// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ServerAction _$ServerActionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'createLobby':
          return ServerCreateLobby.fromJson(
            json
          );
                case 'joinLobby':
          return ServerJoinLobby.fromJson(
            json
          );
                case 'updateNickname':
          return ServerUpdateNickname.fromJson(
            json
          );
                case 'leaveLobby':
          return ServerLeaveLobby.fromJson(
            json
          );
                case 'updateLobby':
          return ServerUpdateLobby.fromJson(
            json
          );
                case 'syncLobby':
          return ServerSyncLobby.fromJson(
            json
          );
                case 'unknown':
          return ServerUnknown.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ServerAction',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ServerAction {



  /// Serializes this ServerAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerAction);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServerAction()';
}


}

/// @nodoc
class $ServerActionCopyWith<$Res>  {
$ServerActionCopyWith(ServerAction _, $Res Function(ServerAction) __);
}


/// Adds pattern-matching-related methods to [ServerAction].
extension ServerActionPatterns on ServerAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerCreateLobby value)?  createLobby,TResult Function( ServerJoinLobby value)?  joinLobby,TResult Function( ServerUpdateNickname value)?  updateNickname,TResult Function( ServerLeaveLobby value)?  leaveLobby,TResult Function( ServerUpdateLobby value)?  updateLobby,TResult Function( ServerSyncLobby value)?  syncLobby,TResult Function( ServerUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerCreateLobby() when createLobby != null:
return createLobby(_that);case ServerJoinLobby() when joinLobby != null:
return joinLobby(_that);case ServerUpdateNickname() when updateNickname != null:
return updateNickname(_that);case ServerLeaveLobby() when leaveLobby != null:
return leaveLobby(_that);case ServerUpdateLobby() when updateLobby != null:
return updateLobby(_that);case ServerSyncLobby() when syncLobby != null:
return syncLobby(_that);case ServerUnknown() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerCreateLobby value)  createLobby,required TResult Function( ServerJoinLobby value)  joinLobby,required TResult Function( ServerUpdateNickname value)  updateNickname,required TResult Function( ServerLeaveLobby value)  leaveLobby,required TResult Function( ServerUpdateLobby value)  updateLobby,required TResult Function( ServerSyncLobby value)  syncLobby,required TResult Function( ServerUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case ServerCreateLobby():
return createLobby(_that);case ServerJoinLobby():
return joinLobby(_that);case ServerUpdateNickname():
return updateNickname(_that);case ServerLeaveLobby():
return leaveLobby(_that);case ServerUpdateLobby():
return updateLobby(_that);case ServerSyncLobby():
return syncLobby(_that);case ServerUnknown():
return unknown(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerCreateLobby value)?  createLobby,TResult? Function( ServerJoinLobby value)?  joinLobby,TResult? Function( ServerUpdateNickname value)?  updateNickname,TResult? Function( ServerLeaveLobby value)?  leaveLobby,TResult? Function( ServerUpdateLobby value)?  updateLobby,TResult? Function( ServerSyncLobby value)?  syncLobby,TResult? Function( ServerUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case ServerCreateLobby() when createLobby != null:
return createLobby(_that);case ServerJoinLobby() when joinLobby != null:
return joinLobby(_that);case ServerUpdateNickname() when updateNickname != null:
return updateNickname(_that);case ServerLeaveLobby() when leaveLobby != null:
return leaveLobby(_that);case ServerUpdateLobby() when updateLobby != null:
return updateLobby(_that);case ServerSyncLobby() when syncLobby != null:
return syncLobby(_that);case ServerUnknown() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String nickname)?  createLobby,TResult Function( String nickname,  String roomCode)?  joinLobby,TResult Function( String nickname)?  updateNickname,TResult Function( String roomCode)?  leaveLobby,TResult Function( LobbyModel lobby)?  updateLobby,TResult Function()?  syncLobby,TResult Function()?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerCreateLobby() when createLobby != null:
return createLobby(_that.nickname);case ServerJoinLobby() when joinLobby != null:
return joinLobby(_that.nickname,_that.roomCode);case ServerUpdateNickname() when updateNickname != null:
return updateNickname(_that.nickname);case ServerLeaveLobby() when leaveLobby != null:
return leaveLobby(_that.roomCode);case ServerUpdateLobby() when updateLobby != null:
return updateLobby(_that.lobby);case ServerSyncLobby() when syncLobby != null:
return syncLobby();case ServerUnknown() when unknown != null:
return unknown();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String nickname)  createLobby,required TResult Function( String nickname,  String roomCode)  joinLobby,required TResult Function( String nickname)  updateNickname,required TResult Function( String roomCode)  leaveLobby,required TResult Function( LobbyModel lobby)  updateLobby,required TResult Function()  syncLobby,required TResult Function()  unknown,}) {final _that = this;
switch (_that) {
case ServerCreateLobby():
return createLobby(_that.nickname);case ServerJoinLobby():
return joinLobby(_that.nickname,_that.roomCode);case ServerUpdateNickname():
return updateNickname(_that.nickname);case ServerLeaveLobby():
return leaveLobby(_that.roomCode);case ServerUpdateLobby():
return updateLobby(_that.lobby);case ServerSyncLobby():
return syncLobby();case ServerUnknown():
return unknown();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String nickname)?  createLobby,TResult? Function( String nickname,  String roomCode)?  joinLobby,TResult? Function( String nickname)?  updateNickname,TResult? Function( String roomCode)?  leaveLobby,TResult? Function( LobbyModel lobby)?  updateLobby,TResult? Function()?  syncLobby,TResult? Function()?  unknown,}) {final _that = this;
switch (_that) {
case ServerCreateLobby() when createLobby != null:
return createLobby(_that.nickname);case ServerJoinLobby() when joinLobby != null:
return joinLobby(_that.nickname,_that.roomCode);case ServerUpdateNickname() when updateNickname != null:
return updateNickname(_that.nickname);case ServerLeaveLobby() when leaveLobby != null:
return leaveLobby(_that.roomCode);case ServerUpdateLobby() when updateLobby != null:
return updateLobby(_that.lobby);case ServerSyncLobby() when syncLobby != null:
return syncLobby();case ServerUnknown() when unknown != null:
return unknown();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ServerCreateLobby implements ServerAction {
  const ServerCreateLobby(this.nickname, {final  String? $type}): $type = $type ?? 'createLobby';
  factory ServerCreateLobby.fromJson(Map<String, dynamic> json) => _$ServerCreateLobbyFromJson(json);

 final  String nickname;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerCreateLobbyCopyWith<ServerCreateLobby> get copyWith => _$ServerCreateLobbyCopyWithImpl<ServerCreateLobby>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerCreateLobbyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerCreateLobby&&(identical(other.nickname, nickname) || other.nickname == nickname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname);

@override
String toString() {
  return 'ServerAction.createLobby(nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class $ServerCreateLobbyCopyWith<$Res> implements $ServerActionCopyWith<$Res> {
  factory $ServerCreateLobbyCopyWith(ServerCreateLobby value, $Res Function(ServerCreateLobby) _then) = _$ServerCreateLobbyCopyWithImpl;
@useResult
$Res call({
 String nickname
});




}
/// @nodoc
class _$ServerCreateLobbyCopyWithImpl<$Res>
    implements $ServerCreateLobbyCopyWith<$Res> {
  _$ServerCreateLobbyCopyWithImpl(this._self, this._then);

  final ServerCreateLobby _self;
  final $Res Function(ServerCreateLobby) _then;

/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nickname = null,}) {
  return _then(ServerCreateLobby(
null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ServerJoinLobby implements ServerAction {
  const ServerJoinLobby(this.nickname, this.roomCode, {final  String? $type}): $type = $type ?? 'joinLobby';
  factory ServerJoinLobby.fromJson(Map<String, dynamic> json) => _$ServerJoinLobbyFromJson(json);

 final  String nickname;
 final  String roomCode;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerJoinLobbyCopyWith<ServerJoinLobby> get copyWith => _$ServerJoinLobbyCopyWithImpl<ServerJoinLobby>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerJoinLobbyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerJoinLobby&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname,roomCode);

@override
String toString() {
  return 'ServerAction.joinLobby(nickname: $nickname, roomCode: $roomCode)';
}


}

/// @nodoc
abstract mixin class $ServerJoinLobbyCopyWith<$Res> implements $ServerActionCopyWith<$Res> {
  factory $ServerJoinLobbyCopyWith(ServerJoinLobby value, $Res Function(ServerJoinLobby) _then) = _$ServerJoinLobbyCopyWithImpl;
@useResult
$Res call({
 String nickname, String roomCode
});




}
/// @nodoc
class _$ServerJoinLobbyCopyWithImpl<$Res>
    implements $ServerJoinLobbyCopyWith<$Res> {
  _$ServerJoinLobbyCopyWithImpl(this._self, this._then);

  final ServerJoinLobby _self;
  final $Res Function(ServerJoinLobby) _then;

/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nickname = null,Object? roomCode = null,}) {
  return _then(ServerJoinLobby(
null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ServerUpdateNickname implements ServerAction {
  const ServerUpdateNickname(this.nickname, {final  String? $type}): $type = $type ?? 'updateNickname';
  factory ServerUpdateNickname.fromJson(Map<String, dynamic> json) => _$ServerUpdateNicknameFromJson(json);

 final  String nickname;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerUpdateNicknameCopyWith<ServerUpdateNickname> get copyWith => _$ServerUpdateNicknameCopyWithImpl<ServerUpdateNickname>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerUpdateNicknameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerUpdateNickname&&(identical(other.nickname, nickname) || other.nickname == nickname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname);

@override
String toString() {
  return 'ServerAction.updateNickname(nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class $ServerUpdateNicknameCopyWith<$Res> implements $ServerActionCopyWith<$Res> {
  factory $ServerUpdateNicknameCopyWith(ServerUpdateNickname value, $Res Function(ServerUpdateNickname) _then) = _$ServerUpdateNicknameCopyWithImpl;
@useResult
$Res call({
 String nickname
});




}
/// @nodoc
class _$ServerUpdateNicknameCopyWithImpl<$Res>
    implements $ServerUpdateNicknameCopyWith<$Res> {
  _$ServerUpdateNicknameCopyWithImpl(this._self, this._then);

  final ServerUpdateNickname _self;
  final $Res Function(ServerUpdateNickname) _then;

/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nickname = null,}) {
  return _then(ServerUpdateNickname(
null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ServerLeaveLobby implements ServerAction {
  const ServerLeaveLobby(this.roomCode, {final  String? $type}): $type = $type ?? 'leaveLobby';
  factory ServerLeaveLobby.fromJson(Map<String, dynamic> json) => _$ServerLeaveLobbyFromJson(json);

 final  String roomCode;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerLeaveLobbyCopyWith<ServerLeaveLobby> get copyWith => _$ServerLeaveLobbyCopyWithImpl<ServerLeaveLobby>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerLeaveLobbyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerLeaveLobby&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roomCode);

@override
String toString() {
  return 'ServerAction.leaveLobby(roomCode: $roomCode)';
}


}

/// @nodoc
abstract mixin class $ServerLeaveLobbyCopyWith<$Res> implements $ServerActionCopyWith<$Res> {
  factory $ServerLeaveLobbyCopyWith(ServerLeaveLobby value, $Res Function(ServerLeaveLobby) _then) = _$ServerLeaveLobbyCopyWithImpl;
@useResult
$Res call({
 String roomCode
});




}
/// @nodoc
class _$ServerLeaveLobbyCopyWithImpl<$Res>
    implements $ServerLeaveLobbyCopyWith<$Res> {
  _$ServerLeaveLobbyCopyWithImpl(this._self, this._then);

  final ServerLeaveLobby _self;
  final $Res Function(ServerLeaveLobby) _then;

/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomCode = null,}) {
  return _then(ServerLeaveLobby(
null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ServerUpdateLobby implements ServerAction {
  const ServerUpdateLobby(this.lobby, {final  String? $type}): $type = $type ?? 'updateLobby';
  factory ServerUpdateLobby.fromJson(Map<String, dynamic> json) => _$ServerUpdateLobbyFromJson(json);

 final  LobbyModel lobby;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerUpdateLobbyCopyWith<ServerUpdateLobby> get copyWith => _$ServerUpdateLobbyCopyWithImpl<ServerUpdateLobby>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerUpdateLobbyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerUpdateLobby&&(identical(other.lobby, lobby) || other.lobby == lobby));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lobby);

@override
String toString() {
  return 'ServerAction.updateLobby(lobby: $lobby)';
}


}

/// @nodoc
abstract mixin class $ServerUpdateLobbyCopyWith<$Res> implements $ServerActionCopyWith<$Res> {
  factory $ServerUpdateLobbyCopyWith(ServerUpdateLobby value, $Res Function(ServerUpdateLobby) _then) = _$ServerUpdateLobbyCopyWithImpl;
@useResult
$Res call({
 LobbyModel lobby
});


$LobbyModelCopyWith<$Res> get lobby;

}
/// @nodoc
class _$ServerUpdateLobbyCopyWithImpl<$Res>
    implements $ServerUpdateLobbyCopyWith<$Res> {
  _$ServerUpdateLobbyCopyWithImpl(this._self, this._then);

  final ServerUpdateLobby _self;
  final $Res Function(ServerUpdateLobby) _then;

/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lobby = null,}) {
  return _then(ServerUpdateLobby(
null == lobby ? _self.lobby : lobby // ignore: cast_nullable_to_non_nullable
as LobbyModel,
  ));
}

/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LobbyModelCopyWith<$Res> get lobby {
  
  return $LobbyModelCopyWith<$Res>(_self.lobby, (value) {
    return _then(_self.copyWith(lobby: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class ServerSyncLobby implements ServerAction {
  const ServerSyncLobby({final  String? $type}): $type = $type ?? 'syncLobby';
  factory ServerSyncLobby.fromJson(Map<String, dynamic> json) => _$ServerSyncLobbyFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ServerSyncLobbyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerSyncLobby);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServerAction.syncLobby()';
}


}




/// @nodoc
@JsonSerializable()

class ServerUnknown implements ServerAction {
  const ServerUnknown({final  String? $type}): $type = $type ?? 'unknown';
  factory ServerUnknown.fromJson(Map<String, dynamic> json) => _$ServerUnknownFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ServerUnknownToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerUnknown);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServerAction.unknown()';
}


}




// dart format on
