import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: 'Long Black',
      price: "4.10",
      imagepath: "lib/images/black.png",
    ),
    Coffee(
      name: 'Latte',
      price: "3.9",
      imagepath: "lib/images/latte.png",
    ),
    Coffee(
      name: 'Espresso',
      price: "5",
      imagepath: "lib/images/espresso.png",
    ),
    Coffee(
      name: 'Iced Coffee',
      price: "5.2",
      imagepath: "lib/images/iced-coffee.png",
    ),
  ];
  List<Coffee> _cart = [];
  List<Coffee> get coffeeShop => _shop;
  List<Coffee> get userCart => _cart;
  void addItemToCart(Coffee coffee) {
    _cart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _cart.remove(coffee);
    notifyListeners();
  }
}
