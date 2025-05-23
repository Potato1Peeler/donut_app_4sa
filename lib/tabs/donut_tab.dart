import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(String, String) onAddToCart;  // Función pasada desde HomePage

  // lista de donuts
  final List donutsOnSale = [
    ["Ice Cream", "Dunkin's", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Krispy Kreme", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Dunkin's", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Local Donut", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Coconut", "Local Donut", "50", Colors.pink, "lib/images/coco.png"],
    ["Chocomint", "Krispy Kreme", "35", Colors.green, "lib/images/menta.png"],
    ["Classic", "Donas Americanas", "30", Colors.brown, "lib/images/classica donut.png"],
    ["Glazed", "Donas Americanas", "50", Colors.grey, "lib/images/glazeada.png"],
  ];

  DonutTab({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1/1.5),
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          onAddToCart: onAddToCart,  // Pasamos la función aquí
        );
      },
    );
  }
}
