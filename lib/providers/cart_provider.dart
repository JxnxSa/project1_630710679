import 'package:flutter/material.dart';
import 'package:project1_630710679/models/cart.dart';

class CartProvider extends ChangeNotifier {
  List<Cart> carts = [];

  List<Cart> getCart() {
    return carts;
  }

  void addSoupCart(Cart statement) {
    carts.add(statement);
    // carts.add(statement);
  }

  void removeSoup(String nameSoup) {
    carts.removeWhere((item) => item.name == nameSoup);
  }

  void addMenuCart(Cart statement, String nameMenu) {
    carts.removeWhere((item) => item.name == nameMenu);
    carts.add(statement);
  }

  void removeMenu(String nameMenu) {
    carts.removeWhere((item) => item.name == nameMenu);
  }
}
