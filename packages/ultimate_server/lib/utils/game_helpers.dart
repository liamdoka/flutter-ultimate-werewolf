import 'package:ultimate_shared/models/game_card.dart';
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
}
