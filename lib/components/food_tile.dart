import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/number_sizes.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(mediumSecond),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text(
                        '\$${food.price}',
                        style: TextStyle(color: context.primaryColor),
                      ),
                      const SizedBox(height: small),
                      Text(
                        food.description,
                        style: TextStyle(
                          color: context.inversePrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: mediumSecond),
                ClipRRect(
                  borderRadius: BorderRadius.circular(xSmall),
                  child: Image.asset(
                    food.imagePath,
                    height: xLargeSecond,
                    width: xLargeSecond,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: context.tertiaryColor,
          endIndent: largeSecond,
          indent: largeSecond,
        )
      ],
    );
  }
}
