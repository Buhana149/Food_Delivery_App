import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/number_sizes.dart';
import 'package:food_delivery_app/constants/text_style_extension.dart';

class MyDrawerTile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;
  const MyDrawerTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: largeSecond),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle().primaryColor(context),
        ),
        leading: Icon(
          icon,
          color: context.inversePrimaryColor,
        ),
        onTap: onTap,
      ),
    );
  }
}
