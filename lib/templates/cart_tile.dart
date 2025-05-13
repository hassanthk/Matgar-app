import 'package:flutter/material.dart';
import 'package:matgar_app/Data/product.dart';
import 'package:matgar_app/Data/products_methodes.dart';

import 'package:provider/provider.dart';

class CartTile extends StatelessWidget {
  const CartTile({super.key, required this.product, required this.name, required this.desc, required this.price});
  final Product product;
  final String name;
  final String desc;
  final String price;
  @override
  Widget build(BuildContext context) {
    void remove_from_cart_dialog() {
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              content: Text('Are you sure ?'),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No"),
                ),
                SizedBox(width: 55),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().remove_from_cart(product);
                  },
                  child: Text("Yes"),
                ),
              ],
            ),
      );
    }

    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width,
        height: 100,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Row(
            children: [
              Icon(Icons.shop, size: 100, color: Colors.black),
              SizedBox(
                width: 190,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(desc),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(price),

                    IconButton(
                      onPressed: remove_from_cart_dialog,
                      icon: Icon(Icons.remove),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}
