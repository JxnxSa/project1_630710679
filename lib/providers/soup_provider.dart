import 'package:flutter/material.dart';
import 'package:project1_630710679/models/soup.dart';

class SoupProvider extends ChangeNotifier {
  List<Soup> soups = [
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
  ];

  //ดึงข้อมูล
  List<Soup> getSoup() {
    return soups;
  }

  void addSoup(Soup statement) {
    soups.add(statement);
  }
}
