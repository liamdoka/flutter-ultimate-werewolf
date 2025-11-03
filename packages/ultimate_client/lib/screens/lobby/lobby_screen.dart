import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ultimate_client/constants/sizes.dart';
import 'package:ultimate_client/domain/client/client_provider.dart';
import 'package:ultimate_client/domain/lobby/lobby_provider.dart';
import 'package:ultimate_client/router/router.gr.dart';
import 'package:ultimate_client/screens/lobby/widgets/lobby_code_widget.dart';
import 'package:ultimate_client/utils/theme_extensions.dart';
import 'package:ultimate_shared/models/server_action.dart';

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
                        children: lobby.players.map((player) {
                          if (player.id == client.id) {
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
    return Container(
      decoration: BoxDecoration(
        color: context.colors.surfaceContainerHigh,
        borderRadius: Rounding.sm,
      ),
      padding: const EdgeInsets.all(Spacing.sm),
      child: Text(player.nickname),
    );
  }
}

class ClientPlayerTile extends ConsumerWidget {
  const ClientPlayerTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(clientProvider);

    if (client.isNotInLobby) return const SizedBox.shrink();

    return Container(
      decoration: BoxDecoration(
        color: context.colors.surfaceContainerHigh,
        borderRadius: Rounding.sm,
      ),
      padding: const EdgeInsets.all(Spacing.sm),
      child: Row(
        spacing: Spacing.xs,
        children: [const Icon(Icons.person), Text(client.nickname!)],
      ),
    );
  }
}
