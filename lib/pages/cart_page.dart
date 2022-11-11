import 'package:flutter/material.dart';
import 'package:project1_630710679/models/cart.dart';
import 'package:project1_630710679/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Consumer(
        builder: (context, CartProvider provider, child) {
          return ListView.builder(
            itemCount: provider.carts.length,
            itemBuilder: (context, int index) {
              Cart data = provider.carts[index];
              return ListTile(
                //title: Text(data.name),
                leading: Container(
                  width: 50.0,
                  height: 50.0,
                  child: Row(
                    children: [
                      Text(
                        '${data.count}x',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(data.name),
                      Text('Price ${data.price * data.count} ฿'),
                    ],
                  ),
                ),
                /*leading: CircleAvatar(
                      radius: 30.0,
                      child: FittedBox(
                        child: Text(data.count.toString()),
                      ),
                    ),
                    title: Text(data.name),
                    subtitle: Text(
                      'Price ${(data.price * data.count).toString()} ฿',
                    ),*/
              );
            },
          );
        },
      ),
    );
  }
}
