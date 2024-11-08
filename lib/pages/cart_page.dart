import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/universal_custom_button.dart';
import 'package:food_delivery_app/components/cart_tile.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Cart'),
            backgroundColor: transparent,
            foregroundColor: context.inversePrimaryColor,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text(
                            'Are you sure you want to clear the cart?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              restaurant.clearCart();
                            },
                            child: const Text('Yes'),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.delete),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Center(
                            child: Center(
                              child: Text('Cart is empty..'),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  final cartItem = userCart[index];
                                  return MyCartTile(cartItem: cartItem);
                                }))
                  ],
                ),
              ),
              MyButton(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentPage(),
                    )),
                text: 'Go to checkout',
              ),
              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
