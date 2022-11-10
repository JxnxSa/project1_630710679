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
              return Card(
                elevation: 5.0,
                margin: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 5.0,
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    child: FittedBox(
                      child: Text(data.count.toString()),
                    ),
                  ),
                  title: Text(data.name),
                  subtitle: Text(
                    'Price ${(data.price * data.count).toString()} ฿',
                  ),
                ),
              );
            },
          );
        },
      ),
      /*Consumer(
        builder: (context, SoupProvider provider, child) {
          return ListView.builder(
            itemCount: provider.soups.length,
            itemBuilder: (context, int index) {
              Soup data = provider.soups[index];
              return Card(
                elevation: 5.0,
                margin: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 5.0,
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    child: FittedBox(
                      child: Image.asset(
                        data.imageSoup,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(data.nameSoup),
                  subtitle: Text(
                    'Price ${data.priceSoup.toString()} ฿',
                  ),
                ),
              );
            },
          );
        },
      ),*/
    );
  }
}
