import 'package:donut_app_4sa/utils/pancackes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(String, String) onAddToCart;  // Función pasada desde HomePage

  // lista de donuts
  final List pancakeOnSale = [
    ["Ice Cream", "Dunkin's", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Krispy Kreme", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Pollos hermanos", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Merida Donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Banana Pancake", "iHop", "55", Colors.yellow, ""],
    ["Classic Pancake", "Vips", "45", Colors.blueGrey, ""],
    ["Strawberry Pancake", "Liverpool", "80", Colors.red, ""],
    ["Blueberry Pancake", "Wendy's","85", Colors.blueAccent, ""],
  ];

  PancakesTab({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5),
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return PancakesTile(
          pancakeFlavor: pancakeOnSale[index][0],
          pancakeStore: pancakeOnSale[index][1],
          pancakePrice: pancakeOnSale[index][2],
          pancakeColor: pancakeOnSale[index][3],
          imageName: pancakeOnSale[index][4],
          onAddToCart: onAddToCart,  // Pasamos la función aquí
        );
      },
    );
  }
}
