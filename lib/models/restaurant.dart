import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    Food(
      name: 'Classic Burger',
      description: 'The best burger in town',
      imagePath: 'lib/img/burgers/basic-burger.jpg',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Crispy Burger',
      description: 'The best burger in town',
      imagePath: 'lib/img/burgers/crispy-burger.jpg',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Extra crispy', price: 1.99),
        Addon(name: 'Extra Onion', price: 2.99),
      ],
    ),
    Food(
      name: 'Bacon Burger',
      description: 'The best burger in town',
      imagePath: 'lib/img/burgers/bacon-burger.jfif',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Jaapenos', price: 1.99),
        Addon(name: 'Cheddar', price: 2.99),
      ],
    ),
    Food(
      name: 'Cheeseburger',
      description: 'The best burger in town',
      imagePath: 'lib/img/burgers/cheesburger.jfif',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Vegan Burher',
      description: 'The best burger in town',
      imagePath: 'lib/img/burgers/vegan-burger.jpg',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra onion', price: 0.99),
        Addon(name: 'Garlic', price: 1.99),
        Addon(name: 'Avocado', price: 2.99),
      ],
    ),
    Food(
      name: 'Cookie',
      description: 'The best desert in town',
      imagePath: 'lib/img/desserts/cookie-desert.jpg',
      price: 0.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: 'Extra chocolate', price: 0.99),
        Addon(name: 'White chocolate', price: 1.99),
        Addon(name: 'Milk', price: 2.99),
      ],
    ),
    Food(
      name: 'Creme Brulee',
      description: 'The best desert in town',
      imagePath: 'lib/img/desserts/cremebrulee-desert.jpg',
      price: 0.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: 'Extra quanity', price: 0.99),
        Addon(name: 'White chocolate', price: 1.99),
        Addon(name: 'Cinnamon', price: 2.99),
      ],
    ),
    Food(
      name: 'Ice Cream',
      description: 'The best desert in town',
      imagePath: 'lib/img/desserts/icecream-desert.jpg',
      price: 0.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: 'Extra chocolate', price: 0.99),
        Addon(name: 'White chocolate', price: 1.99),
        Addon(name: 'Milk', price: 2.99),
      ],
    ),
    Food(
      name: 'Oreo desert',
      description: 'The best desert in town',
      imagePath: 'lib/img/desserts/oreo-desert.jpg',
      price: 0.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: 'Extra chocolate', price: 0.99),
        Addon(name: 'White chocolate', price: 1.99),
        Addon(name: 'Milk', price: 2.99),
      ],
    ),
    Food(
      name: 'Tiramisu',
      description: 'The best desert in town',
      imagePath: 'lib/img/desserts/tiramisu-desert.jpg',
      price: 0.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(name: 'Extra chocolate', price: 0.99),
        Addon(name: 'White chocolate', price: 1.99),
        Addon(name: 'Extra cream', price: 2.99),
      ],
    ),
    Food(
      name: 'Berry drink',
      description: 'The best drink in town',
      imagePath: 'lib/img/drinks/berry-drink.jpg',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra quantity', price: 0.99),
        Addon(name: 'Zero  sugar', price: 1.99),
      ],
    ),
    Food(
      name: 'Cola drink',
      description: 'The best drink in town',
      imagePath: 'lib/img/drinks/cola-drink.jfif',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra quantity', price: 0.99),
        Addon(name: 'Zero  sugar', price: 1.99),
      ],
    ),
    Food(
      name: 'Lemonade drink',
      description: 'The best drink in town',
      imagePath: 'lib/img/drinks/lemonade-drink.jfif',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra quantity', price: 0.99),
        Addon(name: 'Zero  sugar', price: 1.99),
      ],
    ),
    Food(
      name: 'Punch drink',
      description: 'The best drink in town',
      imagePath: 'lib/img/drinks/punch-drink.jpg',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra quantity', price: 0.99),
        Addon(name: 'Zero  sugar', price: 1.99),
      ],
    ),
    Food(
      name: 'Sprite drink',
      description: 'The best drink in town',
      imagePath: 'lib/img/drinks/sprite-drink.jpg',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra quantity', price: 0.99),
        Addon(name: 'Zero  sugar', price: 1.99),
      ],
    ),
    Food(
      name: 'Fries',
      description: 'The best fires in town',
      imagePath: 'lib/img/sides/fires-side.jpg',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra quantity', price: 0.99),
        Addon(name: 'Sauce', price: 1.99),
      ],
    ),
    Food(
      name: 'Pasta Salad',
      description: 'The best salad in town',
      imagePath: 'lib/img/salads/pasta-salad.jpg',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Extra quantity', price: 2.99),
        Addon(name: 'Extra sauce', price: 1.99),
      ],
    ),
  ];
  List<Food> get menu => _menu;


}
