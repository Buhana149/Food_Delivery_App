import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/numer_sizes.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: largeSecond,
        right: largeSecond,
        bottom: largeSecond,
        top: largeFifth,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Thank you for your order'),
            const SizedBox(height: largeSecond),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.secondaryColor,
                ),
                borderRadius: BorderRadius.circular(xSmall),
              ),
              padding: const EdgeInsets.all(largeSecond),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) {
                  return Text(restaurant.displayCartReceipt());
                },
              ),
            ),
            const SizedBox(height: largeSecond),
            const Text('Estimated delivery time is 4:10 PM')
          ],
        ),
      ),
    );
  }
}
