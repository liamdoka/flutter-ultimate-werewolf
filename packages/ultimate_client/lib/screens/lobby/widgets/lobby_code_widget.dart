import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ultimate_client/constants/sizes.dart';
import 'package:ultimate_client/utils/theme_extensions.dart';

class LobbyCodeWidget extends StatefulWidget {
  final String code;
  const LobbyCodeWidget({super.key, required this.code});

  @override
  State<LobbyCodeWidget> createState() => _LobbyCodeWidgetState();
}

class _LobbyCodeWidgetState extends State<LobbyCodeWidget> {
  var isVisible = false;

  @override
  Widget build(BuildContext context) {
    // final font = context.fonts.titleMedium?.copyWith(fontFamily: 'monospace');
    final font = GoogleFonts.jetBrainsMono();

    return Container(
      padding: const EdgeInsets.all(Spacing.xs),
      decoration: BoxDecoration(
        borderRadius: Rounding.md,
        color: context.colors.surfaceContainer,
      ),
      child: Row(
        spacing: Spacing.xxs,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.sm,
              vertical: Spacing.xs,
            ),
            decoration: BoxDecoration(
              borderRadius: Rounding.sm,
              color: context.colors.surface,
            ),
            child: SizedBox(
              width: BigSpacing.sm,
              child: Center(
                child: isVisible
                    ? SelectableText(widget.code, style: font)
                    : Text("******", style: font),
              ),
            ),
          ),
          IconButton(
            onPressed: () => setState(() {
              isVisible = !isVisible;
            }),
            icon: isVisible
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
          ),
        ],
      ),
    );
  }
}
