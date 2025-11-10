import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ultimate_client/constants/sizes.dart';
import 'package:ultimate_client/domain/client/client_provider.dart';
import 'package:ultimate_client/domain/lobby/lobby_provider.dart';
import 'package:ultimate_client/domain/models/client_model.dart';
import 'package:ultimate_client/router/router.gr.dart';
import 'package:ultimate_client/screens/lobby/widgets/lobby_code_widget.dart';
import 'package:ultimate_client/utils/ref_extensions.dart';
import 'package:ultimate_client/utils/theme_extensions.dart';
import 'package:ultimate_shared/models/actions/client_action.dart';
import 'package:ultimate_shared/models/actions/server_action.dart';
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
                            return ClientPlayerTile(client: client);
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

class ClientPlayerTile extends ConsumerStatefulWidget {
  final ClientModel client;
  const ClientPlayerTile({super.key, required this.client});

  @override
  ConsumerState<ClientPlayerTile> createState() => _ClientPlayerTileState();
}

class _ClientPlayerTileState extends ConsumerState<ClientPlayerTile> {
  final menuController = MenuController();
  late final TextEditingController textController;
  late final FocusNode textFocusNode;
  var isEditing = false;


  @override
  void initState() {
    textFocusNode = FocusNode(
      onKeyEvent: (node, event) {
        if (event.logicalKey == LogicalKeyboardKey.escape) {
          cancelEditing();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      }
    );

    textController = TextEditingController(text: widget.client.nickname ?? "");
    textController.selection = TextSelection(
        baseOffset: 0,
        extentOffset: textController.text.length,
      );
    super.initState();
  }


  @override
  void dispose() {
    menuController.close();
    textController.dispose();
    textFocusNode.dispose();
    super.dispose();
  }

  void startEditing() {
    if (widget.client.isNotInLobby) return;
    setState(() {
      isEditing = true;
    });
  }

  void cancelEditing() {
    setState(() {
      isEditing = false;
    });
  }

  void finishEditing() {
    ref.client.send(ClientAction.changeNickname(textController.text));
    ref.client.sendServerAction(
      ServerAction.updateNickname(textController.text),
    );
    setState(() {
      isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.client.isNotInLobby) return const SizedBox.shrink();

    return MenuAnchor(
      controller: menuController,
      menuChildren: [
        ListTile(
          leading: const Icon(Icons.edit),
          title: Text("Edit nickname", style: context.fonts.titleMedium),
          onTap: () {
            menuController.close();
            setState(() {
              isEditing = true;
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.logout, color: context.colors.error),
          title: Text(
            "Leave lobby",
            style: context.fonts.titleMedium?.copyWith(
              color: context.colors.error,
            ),
          ),
          onTap: () {
            menuController.close();
            ref.client.sendServerAction(
              ServerAction.leaveLobby(widget.client.roomCode!),
            );
            context.router.replaceAll([const LoginRoute()]);
          },
        ),
      ],
      child: TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: context.colors.surfaceContainerHigh,
        ),
        onPressed: switch (isEditing) {
          true => null,
          false when !menuController.isOpen => menuController.open,
          false => menuController.close
        },
        icon: const Icon(Icons.person),
        label: isEditing
            ? SizedBox(
              width: BoxSizes.xxs,
              height: BigSpacing.xxs,
              child: TextField(
                  focusNode: textFocusNode,
                  controller: textController,
                  onEditingComplete: finishEditing,
                  onSubmitted: (_) => finishEditing(),
                  onTapUpOutside: (_) => cancelEditing(),
                  decoration: context.inputDecoration.copyWith(
                    contentPadding: const EdgeInsets.symmetric(horizontal: Spacing.xs)
                  ),
                  style: context.fonts.bodyMedium,
                  autofocus: true,
                ),
            )
            : Text(widget.client.nickname!, style: context.fonts.titleMedium),
      ),
    );
  }
}
