import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/cart_quantity_selector.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/number_sizes.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
            color: context.secondaryColor,
            borderRadius: BorderRadius.circular(xSmall)),
        margin: const EdgeInsets.symmetric(
          horizontal: largeSecond,
          vertical: small,
        ),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(xSmall),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(xSmall),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: xLarge,
                      width: xLarge,
                    ),
                  ),
                  const SizedBox(width: small),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text(
                        '\$${cartItem.food.price}',
                        style: TextStyle(
                          color: context.primaryColor,
                        ),
                      ),
                      const SizedBox(height: small),
                      QuantitySelector(
                        quantity: cartItem.quantity,
                        food: cartItem.food,
                        onIncrement: () {
                          restaurant.addToCart(
                              cartItem.food, cartItem.selectedAddons);
                        },
                        onDecrement: () {
                          restaurant.removeFromCart(cartItem);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? zeroNumber : largeSixth,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  left: small,
                  bottom: small,
                  right: small,
                ),
                children: cartItem.selectedAddons
                    .map((addon) => Padding(
                          padding:  EdgeInsets.only(right: xSmall),
                          child: FilterChip(
                            label: Row(
                              children: [
                                Text(addon.name),
                                Text('\$${addon.price.toString()}'),
                              ],
                            ),
                            shape: StadiumBorder(
                                side: BorderSide(color: context.primaryColor)),
                            onSelected: (value) {},
                            backgroundColor: context.secondaryColor,
                            labelStyle: TextStyle(
                              color: context.inversePrimaryColor,
                              fontSize: smallSecond,
                            ),
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
