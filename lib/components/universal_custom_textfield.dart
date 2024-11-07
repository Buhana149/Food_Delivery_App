import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: getTertiaryColor(context),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: getPrimaryColor(context),
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: getPrimaryColor(context),
          ),
        ),
      ),
    );
  }
}
