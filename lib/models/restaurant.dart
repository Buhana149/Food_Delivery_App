import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
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
      imagePath: 'lib/img/burgers/cheeseburger.jfif',
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
      imagePath: 'lib/img/sides/fries-side.jpg',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra quantity', price: 0.99),
        Addon(name: 'Sauce', price: 1.99),
      ],
    ),
    Food(
      name: 'Baked Potatoes',
      description: 'The best potatoes in town',
      imagePath: 'lib/img/sides/bakedpotatoes-side.jpg',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra quantity', price: 0.99),
        Addon(name: 'Sauce', price: 1.99),
      ],
    ),
    Food(
      name: 'Corn',
      description: 'The best corn in town',
      imagePath: 'lib/img/sides/corn-side.jpg',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra quantity', price: 0.99),
        Addon(name: 'Sauce', price: 1.99),
      ],
    ),
    Food(
      name: 'Greens sauteed',
      description: 'The best vegetables in town',
      imagePath: 'lib/img/sides/greenbeans-side.jfif',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra quantity', price: 0.99),
        Addon(name: 'Sauce', price: 1.99),
      ],
    ),
    Food(
      name: 'Fried Sweet Potatoes',
      description: 'The best potatoes in town',
      imagePath: 'lib/img/sides/sweetpotatoe-side.jpg',
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

  final List<CartItem> _cart = [];

  String _deliveryAddress = '99 Hollywoos Blv';

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull(
      (item) {
        bool isSameFood = item.food == food;
        bool isSameAddons =
            ListEquality().equals(item.selectedAddons, selectedAddons);

        return isSameFood && isSameAddons;
      },
    );
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln('----------');
    for (final cartItem in _cart) {
      receipt.writeln(
          '${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}');
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln('   Add-ons: ${_formatAddons(cartItem.selectedAddons)}');
      }
      receipt.writeln();
    }
    receipt.writeln('----------');
    receipt.writeln();
    receipt.writeln('Total Items: ${getTotalItemCount()}');
    receipt.writeln('Total Price: ${_formatPrice(getTotalPrice())}');
    receipt.writeln();
    receipt.writeln('Delivering to: $deliveryAddress');
    return receipt.toString();
  }

  String _formatPrice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map(
          (addon) => '${addon.name} (${_formatPrice(addon.price)})',
        )
        .join(',');
  }
}
