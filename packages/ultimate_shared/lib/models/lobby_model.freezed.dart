// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lobby_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LobbyModel {

 String get id; String? get admin; List<GameCard> get deck; LobbyState get state; int get discussionTime; List<PlayerModel> get players;
/// Create a copy of LobbyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LobbyModelCopyWith<LobbyModel> get copyWith => _$LobbyModelCopyWithImpl<LobbyModel>(this as LobbyModel, _$identity);

  /// Serializes this LobbyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LobbyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.admin, admin) || other.admin == admin)&&const DeepCollectionEquality().equals(other.deck, deck)&&(identical(other.state, state) || other.state == state)&&(identical(other.discussionTime, discussionTime) || other.discussionTime == discussionTime)&&const DeepCollectionEquality().equals(other.players, players));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,admin,const DeepCollectionEquality().hash(deck),state,discussionTime,const DeepCollectionEquality().hash(players));

@override
String toString() {
  return 'LobbyModel(id: $id, admin: $admin, deck: $deck, state: $state, discussionTime: $discussionTime, players: $players)';
}


}

/// @nodoc
abstract mixin class $LobbyModelCopyWith<$Res>  {
  factory $LobbyModelCopyWith(LobbyModel value, $Res Function(LobbyModel) _then) = _$LobbyModelCopyWithImpl;
@useResult
$Res call({
 String id, String? admin, List<GameCard> deck, LobbyState state, int discussionTime, List<PlayerModel> players
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? admin = freezed,Object? deck = null,Object? state = null,Object? discussionTime = null,Object? players = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,admin: freezed == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as String?,deck: null == deck ? _self.deck : deck // ignore: cast_nullable_to_non_nullable
as List<GameCard>,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? admin,  List<GameCard> deck,  LobbyState state,  int discussionTime,  List<PlayerModel> players)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LobbyModel() when $default != null:
return $default(_that.id,_that.admin,_that.deck,_that.state,_that.discussionTime,_that.players);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? admin,  List<GameCard> deck,  LobbyState state,  int discussionTime,  List<PlayerModel> players)  $default,) {final _that = this;
switch (_that) {
case _LobbyModel():
return $default(_that.id,_that.admin,_that.deck,_that.state,_that.discussionTime,_that.players);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? admin,  List<GameCard> deck,  LobbyState state,  int discussionTime,  List<PlayerModel> players)?  $default,) {final _that = this;
switch (_that) {
case _LobbyModel() when $default != null:
return $default(_that.id,_that.admin,_that.deck,_that.state,_that.discussionTime,_that.players);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LobbyModel implements LobbyModel {
  const _LobbyModel({required this.id, this.admin, final  List<GameCard> deck = const [], this.state = LobbyState.waiting, this.discussionTime = 90, final  List<PlayerModel> players = const []}): _deck = deck,_players = players;
  factory _LobbyModel.fromJson(Map<String, dynamic> json) => _$LobbyModelFromJson(json);

@override final  String id;
@override final  String? admin;
 final  List<GameCard> _deck;
@override@JsonKey() List<GameCard> get deck {
  if (_deck is EqualUnmodifiableListView) return _deck;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deck);
}

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LobbyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.admin, admin) || other.admin == admin)&&const DeepCollectionEquality().equals(other._deck, _deck)&&(identical(other.state, state) || other.state == state)&&(identical(other.discussionTime, discussionTime) || other.discussionTime == discussionTime)&&const DeepCollectionEquality().equals(other._players, _players));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,admin,const DeepCollectionEquality().hash(_deck),state,discussionTime,const DeepCollectionEquality().hash(_players));

@override
String toString() {
  return 'LobbyModel(id: $id, admin: $admin, deck: $deck, state: $state, discussionTime: $discussionTime, players: $players)';
}


}

/// @nodoc
abstract mixin class _$LobbyModelCopyWith<$Res> implements $LobbyModelCopyWith<$Res> {
  factory _$LobbyModelCopyWith(_LobbyModel value, $Res Function(_LobbyModel) _then) = __$LobbyModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? admin, List<GameCard> deck, LobbyState state, int discussionTime, List<PlayerModel> players
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? admin = freezed,Object? deck = null,Object? state = null,Object? discussionTime = null,Object? players = null,}) {
  return _then(_LobbyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,admin: freezed == admin ? _self.admin : admin // ignore: cast_nullable_to_non_nullable
as String?,deck: null == deck ? _self._deck : deck // ignore: cast_nullable_to_non_nullable
as List<GameCard>,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as LobbyState,discussionTime: null == discussionTime ? _self.discussionTime : discussionTime // ignore: cast_nullable_to_non_nullable
as int,players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<PlayerModel>,
  ));
}


}

// dart format on
