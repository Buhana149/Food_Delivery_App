import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/universal_custom_button.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/constants/number_sizes.dart';
import 'package:food_delivery_app/constants/text_style_extension.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    Navigator.pop(context);

    List<Addon> curentlySelectedAddons = [];

    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        curentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, curentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.food.imagePath),
              Padding(
                padding: const EdgeInsets.all(largeSecond),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.food.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: large,
                      ),
                    ),
                    Text(
                      '\$${widget.food.price}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: mediumSecond,
                        color: context.primaryColor,
                      ),
                    ),
                    const SizedBox(height: small),
                    Text(widget.food.description),
                    const SizedBox(height: large),
                    Divider(color: context.secondaryColor),
                    const SizedBox(height: small),
                    Text(
                      'Add-ons',
                      style: TextStyle(
                        color: context.inversePrimaryColor,
                        fontSize: mediumSecond,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: small),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: context.secondaryColor),
                        borderRadius: BorderRadius.circular(xSmall),
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: widget.food.availableAddons.length,
                        itemBuilder: (context, index) {
                          Addon addon = widget.food.availableAddons[index];
                          return CheckboxListTile(
                            title: Text(addon.name),
                            subtitle: Text(
                              '\$${addon.price}',
                              style: TextStyle().primaryColor(context),
                            ),
                            value: widget.selectedAddons[addon],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddons[addon] = value!;
                              });
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              MyButton(
                onTap: () {
                  addToCart(widget.food, widget.selectedAddons);
                },
                text: 'Add to cart',
              ),
              const SizedBox(height: largeSecond),
            ],
          ),
        ),
      ),
      SafeArea(
        child: Opacity(
          opacity: 0.6,
          child: Container(
            margin: const EdgeInsets.only(left: largeSecond),
            decoration: BoxDecoration(
              color: context.secondaryColor,
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: () => addToCart(widget.food, widget.selectedAddons),
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                )),
          ),
        ),
      )
    ]);
  }
}
