import 'package:donut_app_4sa/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final Function(String, String) onAddToCart;  // Función pasada desde HomePage

  // lista de donuts
  final List smoothieOnSale = [
    ["Ice Cream", "Dunkin's", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Krispy Kreme", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Pollos hermanos", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Merida Donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Chesse Pizza", "Baleros", "55", Colors.yellow, ""],
    ["Peperoni Pizza", "Little Cesar", "140", Colors.blueGrey, ""],
    ["Hawaiian Pizza", "Domino's", "150", Colors.red, ""],
    ["Peppers Pizza", "Bostons", "185", Colors.blueAccent, ""],
  ];

  SmoothieTab({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5),
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothieOnSale[index][0],
          smoothieStore: smoothieOnSale[index][1],
          smoothiePrice: smoothieOnSale[index][2],
          smoothieColor: smoothieOnSale[index][3],
          imageName: smoothieOnSale[index][4],
          onAddToCart: onAddToCart,  // Pasamos la función aquí
        );
      },
    );
  }
}
