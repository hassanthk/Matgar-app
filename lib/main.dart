import 'package:flutter/material.dart';
import 'package:matgar_app/Data/products_methodes.dart';
import 'package:matgar_app/Pages/cart.dart';
import 'package:matgar_app/Pages/home.dart';
import 'package:matgar_app/Pages/intro.dart';
import 'package:matgar_app/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Shop(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Intro(),
      theme: light,
      debugShowCheckedModeBanner: false,
      routes: {
        'Home': (context) => Home(),
        'Intro': (context) => Intro(),
        'Cart': (context) => Cart(),
      },
    );
  }
}
