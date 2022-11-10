import 'package:flutter/material.dart';

class Soup extends ChangeNotifier{
  String imageSoup, nameSoup;
  double priceSoup;
  bool isSoup;

  Soup({
    required this.imageSoup,
    required this.nameSoup,
    required this.priceSoup,
    this.isSoup = false,
  });

  void addSoupCart(){
    nameSoup;
    priceSoup;
  }

  /*var soupList = [
    Soup(
      imageSoup: "assets/imagesSoup/กระดูกหมู.jpg",
      nameSoup: "กระดูกหมู",
      priceSoup: 100.0,
    ),
    Soup(
      imageSoup: "assets/imagesSoup/แจ่วฮ้อน.jpg",
      nameSoup: "แจ่วฮ้อน",
      priceSoup: 100.0,
    ),
    Soup(
      imageSoup: "assets/imagesSoup/ต้มยำ.jpg",
      nameSoup: "ต้มยำ",
      priceSoup: 100.0,
    ),
    Soup(
      imageSoup: "assets/imagesSoup/น้ำดำ.jpg",
      nameSoup: "น้ำดำ",
      priceSoup: 100.0,
    ),
    Soup(
      imageSoup: "assets/imagesSoup/น้ำใส.jpg",
      nameSoup: "น้ำใส",
      priceSoup: 100.0,
    ),
  ];*/

}