import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ultimate_client/constants/sizes.dart';
import 'package:ultimate_client/domain/client/client_provider.dart';
import 'package:ultimate_client/domain/lobby/lobby_provider.dart';
import 'package:ultimate_client/domain/player/player_provider.dart';
import 'package:ultimate_client/router/router.gr.dart';
import 'package:ultimate_client/screens/lobby/widgets/client_player_tile.dart';
import 'package:ultimate_client/screens/lobby/widgets/lobby_code_widget.dart';
import 'package:ultimate_client/screens/lobby/widgets/lobby_starting_widget.dart';
import 'package:ultimate_client/utils/ref_extensions.dart';
import 'package:ultimate_client/utils/theme_extensions.dart';
import 'package:ultimate_shared/models/actions/server_action.dart';
import 'package:ultimate_shared/models/lobby_model.dart';
import 'package:ultimate_shared/models/player_model.dart';

@RoutePage()
class LobbyScreen extends ConsumerWidget {
  const LobbyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lobby = ref.watch(lobbyProvider);
    final client = ref.watch(clientProvider);
    final player = ref.watch(playerProvider);

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
                            return ClientPlayerTile(client: client);
                          }
                          return PlayerTile(player: player);
                        }).toList(),
                      ),
                    ],
                  ),

                  if (lobby.state case LobbyState.starting)
                    const LobbyStartingWidget(),

                  // Ready button
                  FilledButton.tonalIcon(
                    style: FilledButton.styleFrom(
                      backgroundColor: player.isReady ? Colors.green : null,
                      foregroundColor: player.isReady ? Colors.white : null,
                    ),
                    onPressed: () => ref.client.sendServerAction(
                      ServerAction.setReady(!player.isReady),
                    ),
                    label: Text(player.isReady ? "Waiting" : "Ready"),
                    icon: player.isReady
                        ? const Icon(Icons.more_horiz)
                        : const Icon(Icons.check),
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
        shape: player.isReady
            ? const RoundedRectangleBorder(
                side: BorderSide(color: Colors.green, width: 2),
                borderRadius: Rounding.full,
              )
            : null,
      ),
      onPressed: null,
      child: Text(player.nickname, style: context.fonts.bodyLarge),
    );
  }
}
