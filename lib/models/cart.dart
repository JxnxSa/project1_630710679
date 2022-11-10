import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  String name;
  double price;
  int count;


  Cart({
    required this.name,
    required this.price,
    required this.count,
  });
}
