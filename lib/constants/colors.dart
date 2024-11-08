import 'package:flutter/material.dart';

extension ThemeColorExtension on BuildContext {
  Color get primaryColor => Theme.of(this).colorScheme.primary;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
  Color get surfaceColor => Theme.of(this).colorScheme.surface;
  Color get inversePrimaryColor => Theme.of(this).colorScheme.inversePrimary;
  Color get tertiaryColor => Theme.of(this).colorScheme.tertiary;
}

extension TextStyleExtension on TextStyle {
  TextStyle applyPrimaryColor(BuildContext context) {
    return copyWith(color: Theme.of(context).colorScheme.primary);
  }

  TextStyle applySecondaryColor(BuildContext context) {
    return copyWith(color: Theme.of(context).colorScheme.secondary);
  }
   TextStyle applyInverseColor(BuildContext context) {
    return copyWith(color: Theme.of(context).colorScheme.inversePrimary);
  }
}

Color? transparent = Colors.transparent;
Color? green = Colors.green;
Color turqoise = const Color(0xFF49B7AE);
