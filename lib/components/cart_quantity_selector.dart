import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/number_sizes.dart';
import 'package:food_delivery_app/models/food.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.surfaceColor, borderRadius: BorderRadius.circular(largeFifth)),
      padding:  EdgeInsets.all(xSmall),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              size: large,
              color: context.primaryColor,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: xSmall),
            child: SizedBox(
              width: large,
              child: Center(
                child: Text(quantity.toString()),
              ),
            ),
          ),
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              size: large,
              color: context.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
