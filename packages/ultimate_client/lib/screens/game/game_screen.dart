import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ultimate_client/constants/sizes.dart';
import 'package:ultimate_client/domain/client/client_provider.dart';
import 'package:ultimate_client/domain/game_provider.dart';
import 'package:ultimate_client/domain/lobby/lobby_provider.dart';
import 'package:ultimate_client/domain/player/player_provider.dart';
import 'package:ultimate_client/router/router.gr.dart';
import 'package:ultimate_client/utils/theme_extensions.dart';
import 'package:ultimate_shared/models/game_card.dart';

@RoutePage()
class GameScreen extends ConsumerWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(clientProvider);
    final lobby = ref.watch(lobbyProvider);
    final game = ref.watch(gameProvider);

    if (client.isNotInLobby) {
      context.router.replaceAll([const LoginRoute()]);
      return const SizedBox.shrink();
    }

    return Column(
      spacing: BigSpacing.lg,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Ultimate Werewolf",
          style: context.fonts.headlineLarge,
          textAlign: TextAlign.center,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: Spacing.sm,
          runSpacing: Spacing.sm,
          children: game.playerCards.entries.map((entry) {
            final nickname = lobby.players
                .firstWhereOrNull((p) => p.id == entry.key)
                ?.nickname;
            if (nickname == null) return const SizedBox.shrink();
            return PlayerCard(nickname: nickname, card: entry.value);
          }).toList(),
        ),
      ],
    );
  }
}

class PlayerCard extends ConsumerWidget {
  final String nickname;
  final GameCard card;

  const PlayerCard({super.key, required this.nickname, required this.card});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelf = ref.watch(playerProvider).nickname == nickname;

    return Container(
      decoration: BoxDecoration(
        color: context.colors.surfaceContainer,
        borderRadius: Rounding.xs,
        border: isSelf
            ? Border.all(color: context.colors.primaryContainer, width: 2)
            : null,
      ),
      padding: const EdgeInsets.all(Spacing.xs),
      child: Column(
        spacing: Spacing.sm,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(nickname, style: context.fonts.titleLarge),
          Container(
            decoration: BoxDecoration(
              color: context.colors.surfaceContainerHigh,
              borderRadius: Rounding.xxs,
            ),
            height: 96,
            width: 72,
            child: Center(
              child: Text(card.name, style: context.fonts.titleMedium),
            ),
          ),
        ],
      ),
    );
  }
}
