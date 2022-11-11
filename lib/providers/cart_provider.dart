import 'package:flutter/material.dart';
import 'package:project1_630710679/models/cart.dart';

class CartProvider extends ChangeNotifier {
  List<Cart> carts = [
    // Cart(name: 'หมู', price: 20.5, count: 2),
    // Cart(name: 'ไก่', price: 20.5, count: 3),
    // Cart(name: 'หมา', price: 20.5, count: 5),
  ];

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
