import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ultimate_client/constants/sizes.dart';
import 'package:ultimate_client/domain/client/client_provider.dart';
import 'package:ultimate_client/utils/theme_extensions.dart';
import 'package:ultimate_shared/models/server_action.dart';

@RoutePage()
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final nicknameController = TextEditingController();
  final codeController = TextEditingController();

  @override
  void dispose() {
    nicknameController.dispose();
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: BigSpacing.lg,
      children: [
        Text("Ultimate Werewolf", style: context.fonts.headlineLarge),
        Container(
          padding: const EdgeInsets.all(Spacing.xl),
          decoration: BoxDecoration(
            borderRadius: Rounding.md,
            color: context.colors.surfaceContainer,
          ),
          constraints: const BoxConstraints(maxWidth: BoxSizes.md),
          child: Column(
            spacing: Spacing.xl,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Join room",
                style: context.fonts.titleLarge,
                textAlign: TextAlign.center,
              ),
              TextField(
                controller: nicknameController,
                decoration: context.inputDecoration.copyWith(
                  labelText: "Nickname*",
                ),
              ),
              FilledButton.tonal(
                onPressed: () {
                  ref
                      .read(clientProvider.notifier)
                      .sendServerAction(
                        ServerAction.createRoom(nicknameController.text),
                      );
                },
                style: FilledButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: Rounding.sm,
                  ),
                ),
                child: const Text("Create game"),
              ),
              Text(
                "- or -",
                style: context.fonts.bodySmall?.copyWith(
                  color: context.colors.secondary,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                spacing: Spacing.sm,
                children: [
                  Expanded(
                    child: TextField(
                      controller: codeController,
                      decoration: context.inputDecoration.copyWith(
                        labelText: "Code",
                      ),
                    ),
                  ),
                  IconButton.filledTonal(
                    style: IconButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: Rounding.sm,
                      ),
                    ),
                    onPressed: () {
                      ref
                          .read(clientProvider.notifier)
                          .sendServerAction(
                            ServerAction.joinRoom(
                              nicknameController.text,
                              codeController.text,
                            ),
                          );
                    },
                    icon: const Icon(Icons.check),
                  ),
                ],
              ),
            ],
          ),
        ),
        FilledButton(
          onPressed: () {
            ref
                .read(clientProvider.notifier)
                .sendServerAction(const ServerAction.unknown());
          },
          child: const Text("Send unknown"),
        ),
      ],
    );
  }
}
