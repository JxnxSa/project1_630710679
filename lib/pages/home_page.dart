import 'package:flutter/material.dart';
import 'package:project1_630710679/models/menu.dart';
import 'package:project1_630710679/models/soup.dart';
import 'package:project1_630710679/pages/cart_page.dart';
//import 'package:project1_630710679/providers/soup_provider.dart';
import 'package:provider/provider.dart';

String menuPath = "assets/imagesMenu/";
var menuList = [
  Menu(imageMenu: menuPath + "กุ้ง.jpg", nameMenu: "กุ้ง", priceMenu: 20.0),
  Menu(imageMenu: menuPath + "ไก่.jpg", nameMenu: "ไก่", priceMenu: 20.0),
  Menu(
      imageMenu: menuPath + "ข้าวโพด.jpg",
      nameMenu: "ข้าวโพด",
      priceMenu: 20.0),
  Menu(imageMenu: menuPath + "ไข่.jpg", nameMenu: "ไข่", priceMenu: 20.0),
  Menu(imageMenu: menuPath + "ตับ.jpg", nameMenu: "ตับ", priceMenu: 20.0),
  Menu(
      imageMenu: menuPath + "เต้าหู้ปลา.jpg",
      nameMenu: "เต้าหู้ปลา",
      priceMenu: 20.0),
  Menu(imageMenu: menuPath + "เนื้อ.jpg", nameMenu: "เนื้อ", priceMenu: 20.0),
  Menu(
      imageMenu: menuPath + "บะหมีหยก.jpg",
      nameMenu: "บะหมี่หยก",
      priceMenu: 20.0),
  Menu(imageMenu: menuPath + "ปลา.jpg", nameMenu: "ปลา", priceMenu: 20.0),
  Menu(
      imageMenu: menuPath + "ผักกาดขาว.jpg",
      nameMenu: "ผักกาดขาว",
      priceMenu: 20.0),
  Menu(
      imageMenu: menuPath + "ผักบุ้ง.jpg",
      nameMenu: "ผักบุ้ง",
      priceMenu: 20.0),
  Menu(
      imageMenu: menuPath + "ผักฮ่องเต้.jpg",
      nameMenu: "ผักฮ่องเต้",
      priceMenu: 20.0),
  Menu(
      imageMenu: menuPath + "ลูกชิ้น.jpg",
      nameMenu: "ลูกชิ้น",
      priceMenu: 20.0),
  Menu(
      imageMenu: menuPath + "วุ้นเส้น.jpg",
      nameMenu: "วุ้นเส้น",
      priceMenu: 20.0),
  Menu(
      imageMenu: menuPath + "สามชั้น.jpg",
      nameMenu: "สามชั้น",
      priceMenu: 20.0),
  Menu(imageMenu: menuPath + "หมึก.jpg", nameMenu: "หมึก", priceMenu: 20.0),
  Menu(imageMenu: menuPath + "หมู.jpg", nameMenu: "หมู", priceMenu: 20.0),
  Menu(
      imageMenu: menuPath + "เห็ดเข็มทอง.jpg",
      nameMenu: "เห็ดเข็มทอง",
      priceMenu: 20.0),
  Menu(
      imageMenu: menuPath + "เห็ดฟาง.jpg",
      nameMenu: "เห็ดฟาง",
      priceMenu: 20.0),
];

var soupList = [
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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List<Soup>? _soupList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Soup',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    itemBuilder: _buildSoupItem,
                    itemCount: soupList.length,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                    itemBuilder: _buildMenuItem,
                    itemCount: menuList.length,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      //backgroundColor:Colors.amber,
      title: Text('Menu '),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return CartPage();
                },
              ),
            );
          },
          icon: Icon(
            Icons.shopping_cart_outlined,
            size: 30.0,
          ),
        )
      ],
    );
  }

  Widget _buildSoupItem(BuildContext context, int index) {
    var soupItem = soupList[index];
    return Card(
      elevation: 5.0,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        soupItem.isSoup = !soupItem.isSoup;
                      });
                    },
                    icon: soupItem.isSoup
                        ? Icon(Icons.circle_rounded)
                        : Icon(Icons.circle_outlined),
                  ),
                  Image.asset(
                    soupItem.imageSoup,
                    width: 120.0,
                    height: 110.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 10.0,
                    height: 5.0,
                  ),
                  Text(
                    soupItem.nameSoup,
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${soupItem.priceSoup} ฿'),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, int index) {
    var menuItem = menuList[index];
    return Card(
      elevation: 5.0,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    menuItem.imageMenu,
                    width: 120.0,
                    height: 110.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 10.0,
                    height: 5.0,
                  ),
                  Text(
                    menuItem.nameMenu,
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${menuItem.priceMenu} ฿'),
                ),
                PickConter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PickConter extends StatefulWidget {
  const PickConter({Key? key}) : super(key: key);

  @override
  State<PickConter> createState() => _PickConterState();
}

class _PickConterState extends State<PickConter> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              if (count > 0) {
                count--;
              }
            });
          },
          icon: Icon(Icons.remove_circle_outline),
        ),
        Text(
          count.toString().padLeft(2, '0'),
          style: TextStyle(fontSize: 15.0),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          icon: Icon(Icons.add_circle_outline,),
        ),
      ],
    );
  }
}
