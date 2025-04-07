import 'package:donut_app_4sa/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(String, String) onAddToCart;  // Función pasada desde HomePage

  // lista de donuts
  final List pizzaOnSale = [
    ["Ice Cream", "Dunkin's", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Krispy Kreme", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Pollos hermanos", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Merida Donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Chesse Pizza", "Baleros", "55", Colors.yellow, ""],
    ["Peperoni Pizza", "Little Cesar", "140", Colors.blueGrey, ""],
    ["Hawaiian Pizza", "Domino's", "150", Colors.red, ""],
    ["Peppers Pizza", "Bostons", "185", Colors.blueAccent, ""],
  ];

  PizzaTab({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5),
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaStore: pizzaOnSale[index][1],
          pizzaPrice: pizzaOnSale[index][2],
          pizzaColor: pizzaOnSale[index][3],
          imageName: pizzaOnSale[index][4],
          onAddToCart: onAddToCart,  // Pasamos la función aquí
        );
      },
    );
  }
}
