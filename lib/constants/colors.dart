import 'package:flutter/material.dart';

Color getPrimaryColor(BuildContext context) {
  return Theme.of(context).colorScheme.primary;
}

Color getSecondatyColor(BuildContext context) {
  return Theme.of(context).colorScheme.secondary;
}

Color getSurfaceColor(BuildContext context) {
  return Theme.of(context).colorScheme.surface;
}

Color getInverseColor(BuildContext context) {
  return Theme.of(context).colorScheme.inversePrimary;
}
Color getTertiaryColor(BuildContext context) {
  return Theme.of(context).colorScheme.tertiary;
}



Color? transparent = Colors.transparent;
Color? green = Colors.green;
Color turqoise = const Color(0xFF49B7AE);
