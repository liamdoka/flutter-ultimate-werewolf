import 'package:collection/collection.dart';
import 'package:ultimate_shared/models/game_card.dart';
import 'package:ultimate_shared/models/game_model.dart';
import 'package:ultimate_shared/models/lobby_model.dart';
import 'package:ultimate_shared/models/player_model.dart';
import 'package:ultimate_shared/utils/nullables.dart';

abstract class GameHelpers {
  /// Converts a Map of player and their cards
  /// to a list of sets of socket ids,
  /// which allows players to make turns concurrently.
  static List<Set<String>> calculateTurnOrder(Map<String, GameCard> cards) {
    // Group player ids by the card they have
    final grouped = <GameCard, Set<String>>{};
    cards.forEach((playerId, card) {
      if (grouped[card].isNullOrEmpty) {
        grouped[card] = {playerId};
      } else {
        grouped[card]!.add(playerId);
      }
    });

    // Sort players into their turn order.
    final list = <Set<String>>[];
    for (final card in GameCard.turnOrder) {
      final players = grouped[card];
      if (players.isNotNullOrEmpty) {
        list.add(players!);
      }
    }

    return list;
  }

  /// Create a game and shuffle the cards.
  static GameModel createGameFromLobby(LobbyModel lobby) {
    final shuffledPlayers = lobby.players.shuffled();
    final shuffledCards = lobby.deck.sublist(1).shuffled()
      ..insert(0, GameCard.bluSpy);

    final startCards = <String, GameCard>{};
    final riverCards = <GameCard>[];

    for (var i = 0; i < shuffledCards.length; i++) {
      final card = shuffledCards[i];
      if (i < shuffledPlayers.length) {
        final player = shuffledPlayers[i];
        startCards[player.id] = card;
      } else {
        riverCards.add(card);
      }
    }

    return GameModel(
      id: lobby.id,
      startCards: startCards,
      riverCards: riverCards,
      turns: calculateTurnOrder(startCards),
      state: GameState.dealing,
    );
  }

  /// Different players will need to be able to see different things.
  /// Each player starts be being able to see only their own card.
  static PlayerGameModel getInitialPlayerGameModel({
    required GameModel game,
    required PlayerModel player,
  }) {
    final playerCard = game.startCards[player.id];
    if (playerCard == null) {
      throw Exception('Player ${player.id} is not in game ${game.id}');
    }

    final playerCards = game.startCards.map(
      (id, card) => MapEntry(id, GameCard.unknown),
    );
    playerCards[player.id] = playerCard;

    final playerGame = PlayerGameModel(
      gameId: game.id,
      playerId: player.id,
      riverCards: List.generate(
        game.riverCards.length,
        (_) => GameCard.unknown,
      ),
      playerCards: playerCards,
    );

    return playerGame;
  }
}
