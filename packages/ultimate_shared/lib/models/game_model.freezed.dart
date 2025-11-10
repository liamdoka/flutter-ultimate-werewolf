// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameModel {

 String get id; Map<String, GameCard> get startCards; Map<String, GameCard> get endCards; List<GameCard> get riverCards; List<Set<String>> get turns; GameState get state;
/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameModelCopyWith<GameModel> get copyWith => _$GameModelCopyWithImpl<GameModel>(this as GameModel, _$identity);

  /// Serializes this GameModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.startCards, startCards)&&const DeepCollectionEquality().equals(other.endCards, endCards)&&const DeepCollectionEquality().equals(other.riverCards, riverCards)&&const DeepCollectionEquality().equals(other.turns, turns)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(startCards),const DeepCollectionEquality().hash(endCards),const DeepCollectionEquality().hash(riverCards),const DeepCollectionEquality().hash(turns),state);

@override
String toString() {
  return 'GameModel(id: $id, startCards: $startCards, endCards: $endCards, riverCards: $riverCards, turns: $turns, state: $state)';
}


}

/// @nodoc
abstract mixin class $GameModelCopyWith<$Res>  {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) _then) = _$GameModelCopyWithImpl;
@useResult
$Res call({
 String id, Map<String, GameCard> startCards, Map<String, GameCard> endCards, List<GameCard> riverCards, List<Set<String>> turns, GameState state
});




}
/// @nodoc
class _$GameModelCopyWithImpl<$Res>
    implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._self, this._then);

  final GameModel _self;
  final $Res Function(GameModel) _then;

/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? startCards = null,Object? endCards = null,Object? riverCards = null,Object? turns = null,Object? state = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startCards: null == startCards ? _self.startCards : startCards // ignore: cast_nullable_to_non_nullable
as Map<String, GameCard>,endCards: null == endCards ? _self.endCards : endCards // ignore: cast_nullable_to_non_nullable
as Map<String, GameCard>,riverCards: null == riverCards ? _self.riverCards : riverCards // ignore: cast_nullable_to_non_nullable
as List<GameCard>,turns: null == turns ? _self.turns : turns // ignore: cast_nullable_to_non_nullable
as List<Set<String>>,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as GameState,
  ));
}

}


/// Adds pattern-matching-related methods to [GameModel].
extension GameModelPatterns on GameModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameModel value)  $default,){
final _that = this;
switch (_that) {
case _GameModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameModel value)?  $default,){
final _that = this;
switch (_that) {
case _GameModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Map<String, GameCard> startCards,  Map<String, GameCard> endCards,  List<GameCard> riverCards,  List<Set<String>> turns,  GameState state)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that.id,_that.startCards,_that.endCards,_that.riverCards,_that.turns,_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Map<String, GameCard> startCards,  Map<String, GameCard> endCards,  List<GameCard> riverCards,  List<Set<String>> turns,  GameState state)  $default,) {final _that = this;
switch (_that) {
case _GameModel():
return $default(_that.id,_that.startCards,_that.endCards,_that.riverCards,_that.turns,_that.state);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Map<String, GameCard> startCards,  Map<String, GameCard> endCards,  List<GameCard> riverCards,  List<Set<String>> turns,  GameState state)?  $default,) {final _that = this;
switch (_that) {
case _GameModel() when $default != null:
return $default(_that.id,_that.startCards,_that.endCards,_that.riverCards,_that.turns,_that.state);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameModel implements GameModel {
  const _GameModel({required this.id, final  Map<String, GameCard> startCards = const {}, final  Map<String, GameCard> endCards = const {}, final  List<GameCard> riverCards = const [], final  List<Set<String>> turns = const [], this.state = GameState.dealing}): _startCards = startCards,_endCards = endCards,_riverCards = riverCards,_turns = turns;
  factory _GameModel.fromJson(Map<String, dynamic> json) => _$GameModelFromJson(json);

@override final  String id;
 final  Map<String, GameCard> _startCards;
@override@JsonKey() Map<String, GameCard> get startCards {
  if (_startCards is EqualUnmodifiableMapView) return _startCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_startCards);
}

 final  Map<String, GameCard> _endCards;
@override@JsonKey() Map<String, GameCard> get endCards {
  if (_endCards is EqualUnmodifiableMapView) return _endCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_endCards);
}

 final  List<GameCard> _riverCards;
@override@JsonKey() List<GameCard> get riverCards {
  if (_riverCards is EqualUnmodifiableListView) return _riverCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riverCards);
}

 final  List<Set<String>> _turns;
@override@JsonKey() List<Set<String>> get turns {
  if (_turns is EqualUnmodifiableListView) return _turns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_turns);
}

@override@JsonKey() final  GameState state;

/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameModelCopyWith<_GameModel> get copyWith => __$GameModelCopyWithImpl<_GameModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._startCards, _startCards)&&const DeepCollectionEquality().equals(other._endCards, _endCards)&&const DeepCollectionEquality().equals(other._riverCards, _riverCards)&&const DeepCollectionEquality().equals(other._turns, _turns)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_startCards),const DeepCollectionEquality().hash(_endCards),const DeepCollectionEquality().hash(_riverCards),const DeepCollectionEquality().hash(_turns),state);

@override
String toString() {
  return 'GameModel(id: $id, startCards: $startCards, endCards: $endCards, riverCards: $riverCards, turns: $turns, state: $state)';
}


}

/// @nodoc
abstract mixin class _$GameModelCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$GameModelCopyWith(_GameModel value, $Res Function(_GameModel) _then) = __$GameModelCopyWithImpl;
@override @useResult
$Res call({
 String id, Map<String, GameCard> startCards, Map<String, GameCard> endCards, List<GameCard> riverCards, List<Set<String>> turns, GameState state
});




}
/// @nodoc
class __$GameModelCopyWithImpl<$Res>
    implements _$GameModelCopyWith<$Res> {
  __$GameModelCopyWithImpl(this._self, this._then);

  final _GameModel _self;
  final $Res Function(_GameModel) _then;

/// Create a copy of GameModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? startCards = null,Object? endCards = null,Object? riverCards = null,Object? turns = null,Object? state = null,}) {
  return _then(_GameModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,startCards: null == startCards ? _self._startCards : startCards // ignore: cast_nullable_to_non_nullable
as Map<String, GameCard>,endCards: null == endCards ? _self._endCards : endCards // ignore: cast_nullable_to_non_nullable
as Map<String, GameCard>,riverCards: null == riverCards ? _self._riverCards : riverCards // ignore: cast_nullable_to_non_nullable
as List<GameCard>,turns: null == turns ? _self._turns : turns // ignore: cast_nullable_to_non_nullable
as List<Set<String>>,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as GameState,
  ));
}


}


/// @nodoc
mixin _$PlayerGameModel {

 String get gameId; String get playerId; Map<String, GameCard> get playerCards; List<GameCard> get riverCards; GameState get state; bool get isPlayerTurn;
/// Create a copy of PlayerGameModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerGameModelCopyWith<PlayerGameModel> get copyWith => _$PlayerGameModelCopyWithImpl<PlayerGameModel>(this as PlayerGameModel, _$identity);

  /// Serializes this PlayerGameModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerGameModel&&(identical(other.gameId, gameId) || other.gameId == gameId)&&(identical(other.playerId, playerId) || other.playerId == playerId)&&const DeepCollectionEquality().equals(other.playerCards, playerCards)&&const DeepCollectionEquality().equals(other.riverCards, riverCards)&&(identical(other.state, state) || other.state == state)&&(identical(other.isPlayerTurn, isPlayerTurn) || other.isPlayerTurn == isPlayerTurn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gameId,playerId,const DeepCollectionEquality().hash(playerCards),const DeepCollectionEquality().hash(riverCards),state,isPlayerTurn);

@override
String toString() {
  return 'PlayerGameModel(gameId: $gameId, playerId: $playerId, playerCards: $playerCards, riverCards: $riverCards, state: $state, isPlayerTurn: $isPlayerTurn)';
}


}

/// @nodoc
abstract mixin class $PlayerGameModelCopyWith<$Res>  {
  factory $PlayerGameModelCopyWith(PlayerGameModel value, $Res Function(PlayerGameModel) _then) = _$PlayerGameModelCopyWithImpl;
@useResult
$Res call({
 String gameId, String playerId, Map<String, GameCard> playerCards, List<GameCard> riverCards, GameState state, bool isPlayerTurn
});




}
/// @nodoc
class _$PlayerGameModelCopyWithImpl<$Res>
    implements $PlayerGameModelCopyWith<$Res> {
  _$PlayerGameModelCopyWithImpl(this._self, this._then);

  final PlayerGameModel _self;
  final $Res Function(PlayerGameModel) _then;

/// Create a copy of PlayerGameModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gameId = null,Object? playerId = null,Object? playerCards = null,Object? riverCards = null,Object? state = null,Object? isPlayerTurn = null,}) {
  return _then(_self.copyWith(
gameId: null == gameId ? _self.gameId : gameId // ignore: cast_nullable_to_non_nullable
as String,playerId: null == playerId ? _self.playerId : playerId // ignore: cast_nullable_to_non_nullable
as String,playerCards: null == playerCards ? _self.playerCards : playerCards // ignore: cast_nullable_to_non_nullable
as Map<String, GameCard>,riverCards: null == riverCards ? _self.riverCards : riverCards // ignore: cast_nullable_to_non_nullable
as List<GameCard>,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as GameState,isPlayerTurn: null == isPlayerTurn ? _self.isPlayerTurn : isPlayerTurn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerGameModel].
extension PlayerGameModelPatterns on PlayerGameModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerGameModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerGameModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerGameModel value)  $default,){
final _that = this;
switch (_that) {
case _PlayerGameModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerGameModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerGameModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gameId,  String playerId,  Map<String, GameCard> playerCards,  List<GameCard> riverCards,  GameState state,  bool isPlayerTurn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerGameModel() when $default != null:
return $default(_that.gameId,_that.playerId,_that.playerCards,_that.riverCards,_that.state,_that.isPlayerTurn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gameId,  String playerId,  Map<String, GameCard> playerCards,  List<GameCard> riverCards,  GameState state,  bool isPlayerTurn)  $default,) {final _that = this;
switch (_that) {
case _PlayerGameModel():
return $default(_that.gameId,_that.playerId,_that.playerCards,_that.riverCards,_that.state,_that.isPlayerTurn);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gameId,  String playerId,  Map<String, GameCard> playerCards,  List<GameCard> riverCards,  GameState state,  bool isPlayerTurn)?  $default,) {final _that = this;
switch (_that) {
case _PlayerGameModel() when $default != null:
return $default(_that.gameId,_that.playerId,_that.playerCards,_that.riverCards,_that.state,_that.isPlayerTurn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlayerGameModel implements PlayerGameModel {
  const _PlayerGameModel({required this.gameId, required this.playerId, final  Map<String, GameCard> playerCards = const {}, final  List<GameCard> riverCards = const [], this.state = GameState.dealing, this.isPlayerTurn = false}): _playerCards = playerCards,_riverCards = riverCards;
  factory _PlayerGameModel.fromJson(Map<String, dynamic> json) => _$PlayerGameModelFromJson(json);

@override final  String gameId;
@override final  String playerId;
 final  Map<String, GameCard> _playerCards;
@override@JsonKey() Map<String, GameCard> get playerCards {
  if (_playerCards is EqualUnmodifiableMapView) return _playerCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_playerCards);
}

 final  List<GameCard> _riverCards;
@override@JsonKey() List<GameCard> get riverCards {
  if (_riverCards is EqualUnmodifiableListView) return _riverCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_riverCards);
}

@override@JsonKey() final  GameState state;
@override@JsonKey() final  bool isPlayerTurn;

/// Create a copy of PlayerGameModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerGameModelCopyWith<_PlayerGameModel> get copyWith => __$PlayerGameModelCopyWithImpl<_PlayerGameModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerGameModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerGameModel&&(identical(other.gameId, gameId) || other.gameId == gameId)&&(identical(other.playerId, playerId) || other.playerId == playerId)&&const DeepCollectionEquality().equals(other._playerCards, _playerCards)&&const DeepCollectionEquality().equals(other._riverCards, _riverCards)&&(identical(other.state, state) || other.state == state)&&(identical(other.isPlayerTurn, isPlayerTurn) || other.isPlayerTurn == isPlayerTurn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gameId,playerId,const DeepCollectionEquality().hash(_playerCards),const DeepCollectionEquality().hash(_riverCards),state,isPlayerTurn);

@override
String toString() {
  return 'PlayerGameModel(gameId: $gameId, playerId: $playerId, playerCards: $playerCards, riverCards: $riverCards, state: $state, isPlayerTurn: $isPlayerTurn)';
}


}

/// @nodoc
abstract mixin class _$PlayerGameModelCopyWith<$Res> implements $PlayerGameModelCopyWith<$Res> {
  factory _$PlayerGameModelCopyWith(_PlayerGameModel value, $Res Function(_PlayerGameModel) _then) = __$PlayerGameModelCopyWithImpl;
@override @useResult
$Res call({
 String gameId, String playerId, Map<String, GameCard> playerCards, List<GameCard> riverCards, GameState state, bool isPlayerTurn
});




}
/// @nodoc
class __$PlayerGameModelCopyWithImpl<$Res>
    implements _$PlayerGameModelCopyWith<$Res> {
  __$PlayerGameModelCopyWithImpl(this._self, this._then);

  final _PlayerGameModel _self;
  final $Res Function(_PlayerGameModel) _then;

/// Create a copy of PlayerGameModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gameId = null,Object? playerId = null,Object? playerCards = null,Object? riverCards = null,Object? state = null,Object? isPlayerTurn = null,}) {
  return _then(_PlayerGameModel(
gameId: null == gameId ? _self.gameId : gameId // ignore: cast_nullable_to_non_nullable
as String,playerId: null == playerId ? _self.playerId : playerId // ignore: cast_nullable_to_non_nullable
as String,playerCards: null == playerCards ? _self._playerCards : playerCards // ignore: cast_nullable_to_non_nullable
as Map<String, GameCard>,riverCards: null == riverCards ? _self._riverCards : riverCards // ignore: cast_nullable_to_non_nullable
as List<GameCard>,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as GameState,isPlayerTurn: null == isPlayerTurn ? _self.isPlayerTurn : isPlayerTurn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
