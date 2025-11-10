import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ultimate_client/constants/sizes.dart';
import 'package:ultimate_client/domain/models/client_model.dart';
import 'package:ultimate_client/domain/player/player_provider.dart';
import 'package:ultimate_client/router/router.gr.dart';
import 'package:ultimate_client/utils/ref_extensions.dart';
import 'package:ultimate_client/utils/theme_extensions.dart';
import 'package:ultimate_shared/models/actions/client_action.dart';
import 'package:ultimate_shared/models/actions/server_action.dart';

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
      },
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
    textController.text = widget.client.nickname!;
    setState(() {
      isEditing = false;
    });
  }

  void finishEditing() {
    final nickname = textController.text.trim();
    if (nickname.isEmpty) return;

    ref.client.send(ClientAction.changeNickname(nickname));
    ref.client.sendServerAction(ServerAction.updateNickname(nickname));
    setState(() {
      isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final player = ref.watch(playerProvider);
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
          shape: player.isReady
              ? const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.green, width: 2),
                  borderRadius: Rounding.full,
                )
              : null,
        ),
        onPressed: switch (isEditing) {
          true => null,
          false when !menuController.isOpen => menuController.open,
          false => menuController.close,
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
                  maxLength: 32,
                  onSubmitted: (_) => finishEditing(),
                  onTapUpOutside: (_) => cancelEditing(),
                  decoration: context.inputDecoration.copyWith(
                    counter: const SizedBox.shrink(),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: Spacing.xs,
                    ),
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
