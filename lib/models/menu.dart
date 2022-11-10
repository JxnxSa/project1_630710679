import 'package:flutter/material.dart';

class Menu extends ChangeNotifier{
  final String imageMenu, nameMenu;
  final double priceMenu;

  Menu({
    required this.imageMenu,
    required this.nameMenu,
    required this.priceMenu,
  });


}