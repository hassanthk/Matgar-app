import 'package:flutter/material.dart';
import 'package:matgar_app/Data/products_methodes.dart';
import 'package:matgar_app/templates/products_tile.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final men_prod = context.watch<Shop>().men;
    final women_prod = context.watch<Shop>().women;
    final cart = context.watch<Shop>().cart;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text("Matgar", style: TextStyle(fontSize: 30)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pushReplacementNamed(context, 'Intro'),
          icon: Icon(Icons.exit_to_app_outlined),
        ),
        leadingWidth: 75,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'Cart');
            },
            icon: Icon(Icons.shopping_bag_outlined),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7.0),
            child: Text(
              '${cart.length}',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
        actionsPadding: EdgeInsets.only(right: 10),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('Men', style: TextStyle(fontSize: 35)),
            ),
            SizedBox(
              //moshkel
              width: size.width,
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: men_prod.length,
                itemBuilder:
                    (context, index) => ProductsTile(
                      product: men_prod[index],
                      name: men_prod[index].name,
                      description: men_prod[index].description,
                      price: men_prod[index].price,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('Women', style: TextStyle(fontSize: 35)),
            ),
            SizedBox(
              //moshkel
              width: size.width,
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: women_prod.length,
                itemBuilder:
                    (context, index) => ProductsTile(
                      product: women_prod[index],
                      name: women_prod[index].name,
                      description: women_prod[index].description,
                      price: women_prod[index].price,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
