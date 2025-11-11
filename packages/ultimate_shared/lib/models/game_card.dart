import 'package:ultimate_shared/models/actions/game_action.dart';

enum GameCard {
  soldier(name: "Soldier", description: "Do nothing", action: GameNone),
  engineer(
    name: "Engineer",
    description:
        "Swap your card with another players; look at the card you receive",
    action: GameSwapWithPlayer,
  ),
  medic(
    name: "Medic",
    description:
        "At the end of the night, check your card and see if it is the same",
    action: GameCheckCard,
  ),
  pyro(
    name: "Pyro",
    description:
        "Swap the cards of two other players; do not look at the cards",
    action: GameSwapOtherPlayers,
  ),
  scout(
    name: "Scout",
    description: "Look at two cards from the middle",
    action: GameCheckCard,
  ),
  spy(
    name: "Spy",
    description:
        "Look at another players card, assume the identity of that card",
    action: GameAssumeForm,
  ),
  demoman(
    name: "Demoman",
    description: "Swap your card with one from the middle; do not look at it",
    action: GameSwapWithRiver,
  ),
  bluSpy(
    name: "Blu Spy",
    description: "If there is only one Blu Spy, look at card from the middle",
    action: GameCheckRiver,
  ),
  unknown(name: "Unknown", description: "You don't know", action: GameNone);

  // TODO: Sniper, Heavy

  final String name;
  final String description;
  final Type action;

  const GameCard({
    required this.name,
    required this.description,
    required this.action,
  });

  static const turnOrder = <GameCard>[
    // DO NOTHING
    GameCard.soldier,
    // DO STUFF
    GameCard.spy,
    GameCard.bluSpy,
    GameCard.scout,
    GameCard.pyro,
    GameCard.engineer,
    GameCard.demoman,
    GameCard.medic,
  ];
}
