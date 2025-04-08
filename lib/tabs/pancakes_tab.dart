import 'package:donut_app_4sa/utils/pancackes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(String, String) onAddToCart;  // Función pasada desde HomePage

  // lista de donuts
  final List pancakeOnSale = [
    ["Chocolate Pancake", "Sanborns", "100", Colors.blue, "lib/images/panqueques_choco.png"],
    ["Raspberry Pancake", "iHop", "95", Colors.red, "lib/images/raspberry.png"],
    ["Maple Pancakes", "Casa del hotcake", "80", Colors.purple, "lib/images/maple.png"],
    ["IceCream Pancakes", "Vips", "110", Colors.brown, "lib/images/icecreampancackes.png"],
    ["Cherry Pancake", "iHop", "85", Colors.yellow, "lib/images/cherry.png"],
    ["Classic Pancake", "Vips", "70", Colors.blueGrey, "lib/images/tortita.png"],
    ["Strawberry Pancake", "Liverpool", "80", Colors.red, "lib/images/strawberry.png"],
    ["Blueberry Pancake", "Casa del hotcake","85", Colors.blueAccent, "lib/images/blueberry.png"],
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
