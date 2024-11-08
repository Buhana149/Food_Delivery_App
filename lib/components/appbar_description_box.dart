import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/number_sizes.dart';

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
      margin: const EdgeInsets.only(
        left: largeSecond,
        right: largeSecond,
        bottom: largeSecond,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '\$0.99',
                style: TextStyle().applyPrimaryColor(context),
              ),
              Text(
                'Delivery fee',
                style: TextStyle().applySecondaryColor(context),
              )
            ],
          ),
          Column(
            children: [
              Text('15-30 min', style: TextStyle().applyPrimaryColor(context)),
              Text(
                'Delivery time',
                style: TextStyle().applySecondaryColor(context),
              )
            ],
          )
        ],
      ),
    );
  }
}
