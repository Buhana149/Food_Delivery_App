import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '\$0.99',
                style: TextStyle(
                  color: getInverseColor(context),
                ),
              ),
              Text(
                'Delivery fee',
                style: TextStyle(
                  color: getSecondatyColor(context),
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                '15-30 min',
                style: TextStyle(
                  color: getPrimaryColor(context),
                ),
              ),
              Text(
                'Delivery time',
                style: TextStyle(
                  color: getSecondatyColor(context),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
