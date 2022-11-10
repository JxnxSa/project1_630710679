import 'package:flutter/material.dart';
import 'package:project1_630710679/models/menu.dart';

class MenuProvider extends ChangeNotifier {
  List<Menu> menus = [
    Menu(
      imageMenu: "assets/imagesMenu/กุ้ง.jpg",
      nameMenu: "กุ้ง",
      priceMenu: 20.0,
    ),
    Menu(
      imageMenu: "assets/imagesMenu/ไก่.jpg",
      nameMenu: "ไก่",
      priceMenu: 20.0,
    ),
    Menu(
      imageMenu: "assets/imagesMenu/ข้าวโพด.jpg",
      nameMenu: "ข้าวโพด",
      priceMenu: 20.0,
    ),
    Menu(
      imageMenu: "assets/imagesMenu/ไข่.jpg",
      nameMenu: "ไข่",
      priceMenu: 20.0,
    ),
    Menu(
      imageMenu: "assets/imagesMenu/ตับ.jpg",
      nameMenu: "ตับ",
      priceMenu: 20.0,
    ),
    Menu(
      imageMenu: "assets/imagesMenu/เต้าหู้ปลา.jpg",
      nameMenu: "เต้าหู้ปลา",
      priceMenu: 20.0,
    ),
    Menu(
      imageMenu: "assets/imagesMenu/เนื้อ.jpg",
      nameMenu: "เนื้อ",
      priceMenu: 20.0,
    ),
    Menu(
      imageMenu: "assets/imagesMenu/บะหมีหยก.jpg",
      nameMenu: "บะหมี่หยก",
      priceMenu: 20.0,
    ),
    Menu(
        imageMenu: "assets/imagesMenu/ปลา.jpg",
        nameMenu: "ปลา",
        priceMenu: 20.0),
    Menu(
      imageMenu: "assets/imagesMenu/ผักกาดขาว.jpg",
      nameMenu: "ผักกาดขาว",
      priceMenu: 20.0,
    ),
    Menu(
      imageMenu: "assets/imagesMenu/ผักบุ้ง.jpg",
      nameMenu: "ผักบุ้ง",
      priceMenu: 20.0,
    ),
    Menu(
        imageMenu: "assets/imagesMenu/ผักฮ่องเต้.jpg",
        nameMenu: "ผักฮ่องเต้",
        priceMenu: 20.0),
    Menu(
        imageMenu: "assets/imagesMenu/ลูกชิ้น.jpg",
        nameMenu: "ลูกชิ้น",
        priceMenu: 20.0),
    Menu(
        imageMenu: "assets/imagesMenu/วุ้นเส้น.jpg",
        nameMenu: "วุ้นเส้น",
        priceMenu: 20.0),
    Menu(
        imageMenu: "assets/imagesMenu/สามชั้น.jpg",
        nameMenu: "สามชั้น",
        priceMenu: 20.0),
    Menu(
        imageMenu: "assets/imagesMenu/หมึก.jpg",
        nameMenu: "หมึก",
        priceMenu: 20.0),
    Menu(
        imageMenu: "assets/imagesMenu/หมู.jpg",
        nameMenu: "หมู",
        priceMenu: 20.0),
    Menu(
      imageMenu: "assets/imagesMenu/เห็ดเข็มทอง.jpg",
      nameMenu: "เห็ดเข็มทอง",
      priceMenu: 20.0,
    ),
    Menu(
      imageMenu: "assets/imagesMenu/เห็ดฟาง.jpg",
      nameMenu: "เห็ดฟาง",
      priceMenu: 20.0,
    ),
  ];
}
