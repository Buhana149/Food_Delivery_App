import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  TextStyle primaryColor(BuildContext context) {
    return copyWith(color: Theme.of(context).colorScheme.primary);
  }

  TextStyle secondaryColor(BuildContext context) {
    return copyWith(color: Theme.of(context).colorScheme.secondary);
  }

  TextStyle inverseColor(BuildContext context) {
    return copyWith(color: Theme.of(context).colorScheme.inversePrimary);
  }
}
