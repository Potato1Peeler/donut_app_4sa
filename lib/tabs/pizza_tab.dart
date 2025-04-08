import 'package:donut_app_4sa/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(String, String) onAddToCart;  // Función pasada desde HomePage

  // lista de donuts
  final List pizzaOnSale = [
    ["Mushroom Pizza", "Little Cesar", "175", Colors.blue, "lib/images/mushroom.png"],
    ["Onion Pizza", "Domino's", "150", Colors.red, "lib/images/onion.png"],
    ["Shrimp Pizza", "Bostons", "200", Colors.purple, "lib/images/shrimp.png"],
    ["Ham Pizza", "Baleros", "125", Colors.brown, "lib/images/ham.png"],
    ["Chesse Pizza", "Baleros", "100", Colors.yellow, "lib/images/cheese.png"],
    ["Peperoni Pizza", "Little Cesar", "140", Colors.blueGrey, "lib/images/peperoni.png"],
    ["Olives Pizza", "Domino's", "150", Colors.red, "lib/images/olives.png"],
    ["Peppers Pizza", "Bostons", "185", Colors.blueAccent, "lib/images/pepper.png"],
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
