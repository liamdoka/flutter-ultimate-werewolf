import 'package:test/test.dart';
import 'package:ultimate_server/utils/game_helpers.dart';
import 'package:ultimate_shared/models/game_card.dart';

void main() {
  test("Calculate game turn order based on cards", () {
    final cards = <String, GameCard>{
      "A": GameCard.scout,
      "B": GameCard.bluSpy,
      "C": GameCard.scout,
      "D": GameCard.medic,
    };

    final turns = GameHelpers.calculateTurnOrder(cards);
    final expectedTurns = <Set<String>>[
      {"B"},
      {"A", "C"},
      {"D"},
    ];

    expect(turns, equals(expectedTurns));
  });

  test("Calculate game turn order based on cards", () {
    final cards = <String, GameCard>{
      "A": GameCard.scout,
      "B": GameCard.bluSpy,
      "C": GameCard.spy,
      "D": GameCard.medic,
      "E": GameCard.bluSpy,
      "F": GameCard.demoman,
      "G": GameCard.pyro,
      "H": GameCard.engineer,
      "I": GameCard.engineer,
      "J": GameCard.soldier,
    };

    final turns = GameHelpers.calculateTurnOrder(cards);
    final expectedTurns = <Set<String>>[
      {"J"},
      {"C"},
      {"B", "E"},
      {"A"},
      {"G"},
      {"H", "I"},
      {"F"},
      {"D"},
    ];

    expect(turns, equals(expectedTurns));
  });
}
