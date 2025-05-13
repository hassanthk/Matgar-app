import 'package:flutter/material.dart';
import 'package:matgar_app/Data/product.dart';

class Shop extends ChangeNotifier {
  List<Product> men_products = [
    Product(description: 'men shoes 1', price: '12.5', name: 'Adiddas'),
    Product(description: 'men shoes 2', price: '13.5', name: 'Adidda'),
    Product(description: 'men shoes 3', price: '14.5', name: 'Adidd'),
    Product(description: 'men shoes 4', price: '15.5', name: 'Adid'),
    Product(description: 'men shoes 5', price: '16.5', name: 'Adi'),
  ];

  List<Product> women_products = [
    Product(description: 'men shoes 1', price: '12.5', name: 'Adiddas'),
    Product(description: 'men shoes 2', price: '13.5', name: 'Adidda'),
    Product(description: 'men shoes 3', price: '14.5', name: 'Adidd'),
    Product(description: 'men shoes 4', price: '15.5', name: 'Adid'),
    Product(description: 'men shoes 5', price: '16.5', name: 'Adi'),
  ];

  List<Product> prod_cart = [
    Product(description: 'men shoes 5', price: '16.5', name: 'Adi'),
  ];

  //methodes

  List<Product> get men => men_products;

  List<Product> get women => women_products;

  List<Product> get cart => prod_cart;

  void add_to_cart(Product item) {
    cart.add(item);
    notifyListeners();
  }

  void remove_from_cart(Product item) {
    cart.remove(item);
    notifyListeners();
  }
}
