import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/numer_sizes.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(largeSecond),
        margin: const EdgeInsets.symmetric(horizontal: largeSecond),
        decoration: BoxDecoration(
          color: context.secondaryColor,
          borderRadius: BorderRadius.circular(xSmall),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: context.inversePrimaryColor,
              fontSize: mediumSecond,
            ),
          ),
        ),
      ),
    );
  }
}
