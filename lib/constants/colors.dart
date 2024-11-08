import 'package:flutter/material.dart';

extension ThemeColorExtension on BuildContext {
  Color get primaryColor => Theme.of(this).colorScheme.primary;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
  Color get surfaceColor => Theme.of(this).colorScheme.surface;
  Color get inversePrimaryColor => Theme.of(this).colorScheme.inversePrimary;
  Color get tertiaryColor => Theme.of(this).colorScheme.tertiary;
}

Color? transparent = Colors.transparent;
Color? green = Colors.green;
Color turqoise = const Color(0xFF49B7AE);
