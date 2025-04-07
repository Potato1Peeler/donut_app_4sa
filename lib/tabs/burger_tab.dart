import 'package:donut_app_4sa/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(String, String) onAddToCart;  // Función pasada desde HomePage

  // lista de donuts
  final List burgerOnSale = [
    ["CheeseBurger", "Dunkin's", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["BBQ Burger", "Krispy Kreme", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Buffalo Burger", "Pollos hermanos", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Jalapeño Burger", "Merida Donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Classic Burger", "Angry Angus", "125", Colors.brown, ""],
    ["Vegan Burger", "Fridays,", "150", Colors.lightGreen, ""],
    ["Big Mac", "Mc'Donalds", "185", Colors.yellow, "" ],
    ["Fish Burger", "El camaron", "145", Colors.lightBlue, ""],
  ];

  BurgerTab({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5),
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgerOnSale[index][0],
          burgerStore: burgerOnSale[index][1],
          burgerPrice: burgerOnSale[index][2],
          burgerColor: burgerOnSale[index][3],
          imageName: burgerOnSale[index][4],
          onAddToCart: onAddToCart,  // Pasamos la función aquí
        );
      },
    );
  }
}
