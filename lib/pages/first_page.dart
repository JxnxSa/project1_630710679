import 'package:flutter/material.dart';
import 'package:project1_630710679/pages/home_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.black38,
            side: BorderSide(
              width: 10.0,
            )),
        child: Text(
          "Click !!",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return HomePage();
              },
            ),
          );
        },
      ),
    );
  }
}
