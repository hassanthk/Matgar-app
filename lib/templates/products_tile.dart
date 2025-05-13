import 'package:flutter/material.dart';
import 'package:matgar_app/Data/product.dart';
import 'package:matgar_app/Data/products_methodes.dart';
import 'package:matgar_app/templates/intro_button.dart';
import 'package:provider/provider.dart';

class ProductsTile extends StatelessWidget {
  const ProductsTile({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.product,
  });
  final String name;
  final String description;
  final String price;
  final Product product;
  @override
  Widget build(BuildContext context) {
    void add_to_cart_dialog() {
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              content: Text('Add this item to your cart ?'),
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
                    context.read<Shop>().add_to_cart(product);
                  },
                  child: Text("Yes"),
                ),
              ],
            ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        width: 220,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 30),
              child: Icon(Icons.shop, size: 100, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Text(name, style: TextStyle(color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Text(description, style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(price, style: TextStyle(color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IntroButton(
                    circ: 10,
                    height: 40,
                    width: 40,
                    ontap: add_to_cart_dialog,
                    icon: Icon(
                      Icons.add,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
