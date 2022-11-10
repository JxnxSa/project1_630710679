import 'package:flutter/material.dart';
import 'package:project1_630710679/models/soup.dart';
import 'package:project1_630710679/pages/cart_page.dart';

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
                    itemCount: 15,
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
    var soup = soupList[index];
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
                      onPressed: () {},
                      icon: Icon(Icons.check_box_outline_blank_sharp),
                    ),
                    Image.asset(
                      soup.imageSoup,
                      width: 120.0,
                      height: 110.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10.0,
                      height: 5.0,
                    ),
                    Text(
                      soup.nameSoup,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${soup.priceSoup} ฿'),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, int index) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('mmee'),
          )
        ],
      ),
    );
  }
}
