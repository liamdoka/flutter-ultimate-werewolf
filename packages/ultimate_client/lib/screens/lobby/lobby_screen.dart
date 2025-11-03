import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ultimate_client/constants/sizes.dart';
import 'package:ultimate_client/domain/client/client_provider.dart';
import 'package:ultimate_client/domain/lobby/lobby_provider.dart';
import 'package:ultimate_client/router/router.gr.dart';
import 'package:ultimate_client/screens/lobby/widgets/lobby_code_widget.dart';
import 'package:ultimate_client/utils/theme_extensions.dart';
import 'package:ultimate_shared/models/player_model.dart';

@RoutePage()
class LobbyScreen extends ConsumerWidget {
  const LobbyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lobby = ref.watch(lobbyProvider);
    final client = ref.watch(clientProvider);

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

        Column(
          spacing: Spacing.sm,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(children: [LobbyCodeWidget(code: lobby.id)]),
            Container(
              padding: const EdgeInsets.all(Spacing.xl),
              constraints: const BoxConstraints(maxWidth: BoxSizes.md),
              decoration: BoxDecoration(
                borderRadius: Rounding.md,
                color: context.colors.surfaceContainer,
              ),
              child: Column(
                spacing: Spacing.xl,
                children: [
                  Text("Lobby", style: context.fonts.titleLarge),
                  Row(
                    children: [
                      Wrap(
                        runSpacing: Spacing.sm,
                        spacing: Spacing.sm,
                        children: lobby.players.map((player) {
                          if (player.nickname == client.nickname) {
                            return const ClientPlayerTile();
                          }

                          return PlayerTile(player: player);
                        }).toList(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PlayerTile extends StatelessWidget {
  final PlayerModel player;

  const PlayerTile({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: context.colors.surfaceContainerHigh,
      ),
      onPressed: null,
      child: Text(player.nickname, style: context.fonts.bodyLarge),
    );
  }
}

class ClientPlayerTile extends ConsumerWidget {
  const ClientPlayerTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(clientProvider);

    if (client.isNotInLobby) return const SizedBox.shrink();

    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: context.colors.surfaceContainerHigh,
      ),
      onPressed: () {
        // TODO: context menu here
      },
      child: Row(
        spacing: Spacing.xs,
        children: [
          const Icon(Icons.person),
          Text(client.nickname!, style: context.fonts.bodyLarge),
        ],
      ),
    );
  }
}
