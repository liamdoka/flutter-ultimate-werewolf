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
                  case 'createRoom':
          return ServerCreateRoom.fromJson(
            json
          );
                case 'joinRoom':
          return ServerJoinRoom.fromJson(
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerCreateRoom value)?  createRoom,TResult Function( ServerJoinRoom value)?  joinRoom,TResult Function( ServerUpdateLobby value)?  updateLobby,TResult Function( ServerSyncLobby value)?  syncLobby,TResult Function( ServerUnknown value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerCreateRoom() when createRoom != null:
return createRoom(_that);case ServerJoinRoom() when joinRoom != null:
return joinRoom(_that);case ServerUpdateLobby() when updateLobby != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerCreateRoom value)  createRoom,required TResult Function( ServerJoinRoom value)  joinRoom,required TResult Function( ServerUpdateLobby value)  updateLobby,required TResult Function( ServerSyncLobby value)  syncLobby,required TResult Function( ServerUnknown value)  unknown,}){
final _that = this;
switch (_that) {
case ServerCreateRoom():
return createRoom(_that);case ServerJoinRoom():
return joinRoom(_that);case ServerUpdateLobby():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerCreateRoom value)?  createRoom,TResult? Function( ServerJoinRoom value)?  joinRoom,TResult? Function( ServerUpdateLobby value)?  updateLobby,TResult? Function( ServerSyncLobby value)?  syncLobby,TResult? Function( ServerUnknown value)?  unknown,}){
final _that = this;
switch (_that) {
case ServerCreateRoom() when createRoom != null:
return createRoom(_that);case ServerJoinRoom() when joinRoom != null:
return joinRoom(_that);case ServerUpdateLobby() when updateLobby != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String nickname)?  createRoom,TResult Function( String nickname,  String roomCode)?  joinRoom,TResult Function( LobbyModel lobby)?  updateLobby,TResult Function()?  syncLobby,TResult Function()?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerCreateRoom() when createRoom != null:
return createRoom(_that.nickname);case ServerJoinRoom() when joinRoom != null:
return joinRoom(_that.nickname,_that.roomCode);case ServerUpdateLobby() when updateLobby != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String nickname)  createRoom,required TResult Function( String nickname,  String roomCode)  joinRoom,required TResult Function( LobbyModel lobby)  updateLobby,required TResult Function()  syncLobby,required TResult Function()  unknown,}) {final _that = this;
switch (_that) {
case ServerCreateRoom():
return createRoom(_that.nickname);case ServerJoinRoom():
return joinRoom(_that.nickname,_that.roomCode);case ServerUpdateLobby():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String nickname)?  createRoom,TResult? Function( String nickname,  String roomCode)?  joinRoom,TResult? Function( LobbyModel lobby)?  updateLobby,TResult? Function()?  syncLobby,TResult? Function()?  unknown,}) {final _that = this;
switch (_that) {
case ServerCreateRoom() when createRoom != null:
return createRoom(_that.nickname);case ServerJoinRoom() when joinRoom != null:
return joinRoom(_that.nickname,_that.roomCode);case ServerUpdateLobby() when updateLobby != null:
return updateLobby(_that.lobby);case ServerSyncLobby() when syncLobby != null:
return syncLobby();case ServerUnknown() when unknown != null:
return unknown();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class ServerCreateRoom implements ServerAction {
  const ServerCreateRoom(this.nickname, {final  String? $type}): $type = $type ?? 'createRoom';
  factory ServerCreateRoom.fromJson(Map<String, dynamic> json) => _$ServerCreateRoomFromJson(json);

 final  String nickname;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerCreateRoomCopyWith<ServerCreateRoom> get copyWith => _$ServerCreateRoomCopyWithImpl<ServerCreateRoom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerCreateRoomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerCreateRoom&&(identical(other.nickname, nickname) || other.nickname == nickname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname);

@override
String toString() {
  return 'ServerAction.createRoom(nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class $ServerCreateRoomCopyWith<$Res> implements $ServerActionCopyWith<$Res> {
  factory $ServerCreateRoomCopyWith(ServerCreateRoom value, $Res Function(ServerCreateRoom) _then) = _$ServerCreateRoomCopyWithImpl;
@useResult
$Res call({
 String nickname
});




}
/// @nodoc
class _$ServerCreateRoomCopyWithImpl<$Res>
    implements $ServerCreateRoomCopyWith<$Res> {
  _$ServerCreateRoomCopyWithImpl(this._self, this._then);

  final ServerCreateRoom _self;
  final $Res Function(ServerCreateRoom) _then;

/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nickname = null,}) {
  return _then(ServerCreateRoom(
null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ServerJoinRoom implements ServerAction {
  const ServerJoinRoom(this.nickname, this.roomCode, {final  String? $type}): $type = $type ?? 'joinRoom';
  factory ServerJoinRoom.fromJson(Map<String, dynamic> json) => _$ServerJoinRoomFromJson(json);

 final  String nickname;
 final  String roomCode;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerJoinRoomCopyWith<ServerJoinRoom> get copyWith => _$ServerJoinRoomCopyWithImpl<ServerJoinRoom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerJoinRoomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerJoinRoom&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nickname,roomCode);

@override
String toString() {
  return 'ServerAction.joinRoom(nickname: $nickname, roomCode: $roomCode)';
}


}

/// @nodoc
abstract mixin class $ServerJoinRoomCopyWith<$Res> implements $ServerActionCopyWith<$Res> {
  factory $ServerJoinRoomCopyWith(ServerJoinRoom value, $Res Function(ServerJoinRoom) _then) = _$ServerJoinRoomCopyWithImpl;
@useResult
$Res call({
 String nickname, String roomCode
});




}
/// @nodoc
class _$ServerJoinRoomCopyWithImpl<$Res>
    implements $ServerJoinRoomCopyWith<$Res> {
  _$ServerJoinRoomCopyWithImpl(this._self, this._then);

  final ServerJoinRoom _self;
  final $Res Function(ServerJoinRoom) _then;

/// Create a copy of ServerAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? nickname = null,Object? roomCode = null,}) {
  return _then(ServerJoinRoom(
null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
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





/// @nodoc
mixin _$LobbyModel {

 String get id; String? get admin; LobbyState get state; int get discussionTime; List<PlayerModel> get players;
/// Create a copy of LobbyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LobbyModelCopyWith<LobbyModel> get copyWith => _$LobbyModelCopyWithImpl<LobbyModel>(this as LobbyModel, _$identity);

  /// Serializes this LobbyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LobbyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.state, state) || other.state == state)&&(identical(other.discussionTime, discussionTime) || other.discussionTime == discussionTime)&&const DeepCollectionEquality().equals(other.players, players));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,admin,state,discussionTime,const DeepCollectionEquality().hash(players));

@override
String toString() {
  return 'LobbyModel(id: $id, admin: $admin, state: $state, discussionTime: $discussionTime, players: $players)';
}


}

/// @nodoc
abstract mixin class $LobbyModelCopyWith<$Res>  {
  factory $LobbyModelCopyWith(LobbyModel value, $Res Function(LobbyModel) _then) = _$LobbyModelCopyWithImpl;
@useResult
$Res call({
 String id, String? admin, LobbyState state, int discussionTime, List<PlayerModel> players
});




}
/// @nodoc
class _$LobbyModelCopyWithImpl<$Res>
    implements $LobbyModelCopyWith<$Res> {
  _$LobbyModelCopyWithImpl(this._self, this._then);

  final LobbyModel _self;
  final $Res Function(LobbyModel) _then;

/// Create a copy of LobbyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? admin = freezed,Object? state = null,Object? discussionTime = null,Object? players = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,admin: freezed == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as String?,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as LobbyState,discussionTime: null == discussionTime ? _self.discussionTime : discussionTime // ignore: cast_nullable_to_non_nullable
as int,players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<PlayerModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [LobbyModel].
extension LobbyModelPatterns on LobbyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LobbyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LobbyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LobbyModel value)  $default,){
final _that = this;
switch (_that) {
case _LobbyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LobbyModel value)?  $default,){
final _that = this;
switch (_that) {
case _LobbyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? admin,  LobbyState state,  int discussionTime,  List<PlayerModel> players)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LobbyModel() when $default != null:
return $default(_that.id,_that.admin,_that.state,_that.discussionTime,_that.players);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? admin,  LobbyState state,  int discussionTime,  List<PlayerModel> players)  $default,) {final _that = this;
switch (_that) {
case _LobbyModel():
return $default(_that.id,_that.admin,_that.state,_that.discussionTime,_that.players);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? admin,  LobbyState state,  int discussionTime,  List<PlayerModel> players)?  $default,) {final _that = this;
switch (_that) {
case _LobbyModel() when $default != null:
return $default(_that.id,_that.admin,_that.state,_that.discussionTime,_that.players);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LobbyModel implements LobbyModel {
  const _LobbyModel({required this.id, this.admin, this.state = LobbyState.waiting, this.discussionTime = 90, final  List<PlayerModel> players = const []}): _players = players;
  factory _LobbyModel.fromJson(Map<String, dynamic> json) => _$LobbyModelFromJson(json);

@override final  String id;
@override final  String? admin;
@override@JsonKey() final  LobbyState state;
@override@JsonKey() final  int discussionTime;
 final  List<PlayerModel> _players;
@override@JsonKey() List<PlayerModel> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}


/// Create a copy of LobbyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LobbyModelCopyWith<_LobbyModel> get copyWith => __$LobbyModelCopyWithImpl<_LobbyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LobbyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LobbyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.admin, admin) || other.admin == admin)&&(identical(other.state, state) || other.state == state)&&(identical(other.discussionTime, discussionTime) || other.discussionTime == discussionTime)&&const DeepCollectionEquality().equals(other._players, _players));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,admin,state,discussionTime,const DeepCollectionEquality().hash(_players));

@override
String toString() {
  return 'LobbyModel(id: $id, admin: $admin, state: $state, discussionTime: $discussionTime, players: $players)';
}


}

/// @nodoc
abstract mixin class _$LobbyModelCopyWith<$Res> implements $LobbyModelCopyWith<$Res> {
  factory _$LobbyModelCopyWith(_LobbyModel value, $Res Function(_LobbyModel) _then) = __$LobbyModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? admin, LobbyState state, int discussionTime, List<PlayerModel> players
});




}
/// @nodoc
class __$LobbyModelCopyWithImpl<$Res>
    implements _$LobbyModelCopyWith<$Res> {
  __$LobbyModelCopyWithImpl(this._self, this._then);

  final _LobbyModel _self;
  final $Res Function(_LobbyModel) _then;

/// Create a copy of LobbyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? admin = freezed,Object? state = null,Object? discussionTime = null,Object? players = null,}) {
  return _then(_LobbyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,admin: freezed == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as String?,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as LobbyState,discussionTime: null == discussionTime ? _self.discussionTime : discussionTime // ignore: cast_nullable_to_non_nullable
as int,players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<PlayerModel>,
  ));
}


}


/// @nodoc
mixin _$PlayerModel {

 String get id; String get nickname; String get roomCode; bool get isReady;
/// Create a copy of PlayerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerModelCopyWith<PlayerModel> get copyWith => _$PlayerModelCopyWithImpl<PlayerModel>(this as PlayerModel, _$identity);

  /// Serializes this PlayerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.isReady, isReady) || other.isReady == isReady));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nickname,roomCode,isReady);

@override
String toString() {
  return 'PlayerModel(id: $id, nickname: $nickname, roomCode: $roomCode, isReady: $isReady)';
}


}

/// @nodoc
abstract mixin class $PlayerModelCopyWith<$Res>  {
  factory $PlayerModelCopyWith(PlayerModel value, $Res Function(PlayerModel) _then) = _$PlayerModelCopyWithImpl;
@useResult
$Res call({
 String id, String nickname, String roomCode, bool isReady
});




}
/// @nodoc
class _$PlayerModelCopyWithImpl<$Res>
    implements $PlayerModelCopyWith<$Res> {
  _$PlayerModelCopyWithImpl(this._self, this._then);

  final PlayerModel _self;
  final $Res Function(PlayerModel) _then;

/// Create a copy of PlayerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nickname = null,Object? roomCode = null,Object? isReady = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,isReady: null == isReady ? _self.isReady : isReady // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerModel].
extension PlayerModelPatterns on PlayerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerModel value)  $default,){
final _that = this;
switch (_that) {
case _PlayerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nickname,  String roomCode,  bool isReady)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerModel() when $default != null:
return $default(_that.id,_that.nickname,_that.roomCode,_that.isReady);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nickname,  String roomCode,  bool isReady)  $default,) {final _that = this;
switch (_that) {
case _PlayerModel():
return $default(_that.id,_that.nickname,_that.roomCode,_that.isReady);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nickname,  String roomCode,  bool isReady)?  $default,) {final _that = this;
switch (_that) {
case _PlayerModel() when $default != null:
return $default(_that.id,_that.nickname,_that.roomCode,_that.isReady);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlayerModel implements PlayerModel {
  const _PlayerModel({required this.id, required this.nickname, required this.roomCode, this.isReady = false});
  factory _PlayerModel.fromJson(Map<String, dynamic> json) => _$PlayerModelFromJson(json);

@override final  String id;
@override final  String nickname;
@override final  String roomCode;
@override@JsonKey() final  bool isReady;

/// Create a copy of PlayerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerModelCopyWith<_PlayerModel> get copyWith => __$PlayerModelCopyWithImpl<_PlayerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.isReady, isReady) || other.isReady == isReady));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nickname,roomCode,isReady);

@override
String toString() {
  return 'PlayerModel(id: $id, nickname: $nickname, roomCode: $roomCode, isReady: $isReady)';
}


}

/// @nodoc
abstract mixin class _$PlayerModelCopyWith<$Res> implements $PlayerModelCopyWith<$Res> {
  factory _$PlayerModelCopyWith(_PlayerModel value, $Res Function(_PlayerModel) _then) = __$PlayerModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String nickname, String roomCode, bool isReady
});




}
/// @nodoc
class __$PlayerModelCopyWithImpl<$Res>
    implements _$PlayerModelCopyWith<$Res> {
  __$PlayerModelCopyWithImpl(this._self, this._then);

  final _PlayerModel _self;
  final $Res Function(_PlayerModel) _then;

/// Create a copy of PlayerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nickname = null,Object? roomCode = null,Object? isReady = null,}) {
  return _then(_PlayerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,isReady: null == isReady ? _self.isReady : isReady // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
