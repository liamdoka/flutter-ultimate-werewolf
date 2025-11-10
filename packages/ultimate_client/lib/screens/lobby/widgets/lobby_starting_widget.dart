import 'package:flutter/material.dart';
import 'package:ultimate_client/utils/theme_extensions.dart';

class LobbyStartingWidget extends StatefulWidget {
  const LobbyStartingWidget({super.key});

  @override
  State<LobbyStartingWidget> createState() => _LobbyStartingWidgetState();
}

class _LobbyStartingWidgetState extends State<LobbyStartingWidget>
    with SingleTickerProviderStateMixin {
  // TODO: do something when this hits zero.
  static const countdownTime = Duration(seconds: 3);

  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: countdownTime)
      ..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final remaining = (countdownTime.inSeconds * (1 - _controller.value))
            .ceil();
        return Text(
          'Starting in $remaining...',
          style: context.fonts.titleMedium,
        );
      },
    );
  }
}
