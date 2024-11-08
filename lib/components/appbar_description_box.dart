import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/numer_sizes.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(xSmall),
      ),
      padding: const EdgeInsets.all(largeSecond),
      margin: const EdgeInsets.only(left: largeSecond, right: largeSecond, bottom: largeSecond),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '\$0.99',
                style: TextStyle(
                  color: context.inversePrimaryColor,
                ),
              ),
              Text(
                'Delivery fee',
                style: TextStyle(
                  color: context.secondaryColor,
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                '15-30 min',
                style: TextStyle(
                  color: context.primaryColor,
                ),
              ),
              Text(
                'Delivery time',
                style: TextStyle(
                  color: context.secondaryColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
