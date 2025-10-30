import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ultimate_client/constants/sizes.dart';

extension ThemeContext on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
  TextTheme get fonts => Theme.of(this).textTheme;

  InputBorder get inputBorder => OutlineInputBorder(
    borderRadius: Rounding.sm,
    borderSide: BorderSide(width: 2, color: colors.surfaceContainerHighest),
  );

  InputDecoration get inputDecoration => InputDecoration(
    border: inputBorder,
    enabledBorder: inputBorder,
    focusedBorder: inputBorder.copyWith(
      borderSide: inputBorder.borderSide.copyWith(color: colors.primary),
    ),
    fillColor: colors.surface,
    hoverColor: Colors.transparent,
    filled: true,
  );
}

ThemeData buildTheme(Brightness brightness) {
  final baseTheme = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
      brightness: brightness,
    ),
  );

  return baseTheme.copyWith(
    textTheme: GoogleFonts.grenzeTextTheme(baseTheme.textTheme),
  );
}
