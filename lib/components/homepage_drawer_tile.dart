import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

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
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: getPrimaryColor(context),
          ),
        ),
        leading: Icon(
          icon,
          color: getInverseColor(context),
        ),
        onTap: onTap,
      ),
    );
  }
}