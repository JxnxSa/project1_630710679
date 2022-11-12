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
          return  ListView.builder(
              itemCount: provider.carts.length,
              itemBuilder: (context, int index) {
                Cart data = provider.carts[index];
                return Card(
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Container(
                        width: 50.0,
                        height: 50.0,
                        child: Row(
                          children: [
                            Text(
                              '${data.count}x',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      title: Text(data.name),
                      subtitle: Text('${data.price.toString()}  ฿'),
                      trailing: Text('${data.price * data.count}   ฿'),
                    ),
                  ),
                );
              },
          );
        },
      ),
    );
  }
}
