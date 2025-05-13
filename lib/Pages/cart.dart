import 'package:flutter/material.dart';
import 'package:matgar_app/Data/products_methodes.dart';
import 'package:matgar_app/templates/cart_tile.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      floatingActionButton: IconButton(focusColor: Theme.of(context).colorScheme.inversePrimary,
        onPressed: () {},
        icon: Icon(Icons.money),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text("Cart", style: TextStyle(fontSize: 30)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.exit_to_app_outlined),
        ),
        leadingWidth: 75,
        actionsPadding: EdgeInsets.only(right: 10),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width,
            height: size.height - 100,
            child:
                cart.isEmpty
                    ? Center(
                      child: Text(
                        "Your cart is empty",
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                    : ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: cart.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CartTile(
                          product: cart[index],
                          name: cart[index].name,
                          desc: cart[index].description,
                          price: cart[index].price,
                        );
                      },
                    ),
          ),
        ],
      ),
    );
  }
}
