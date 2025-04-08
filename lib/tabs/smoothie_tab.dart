import 'package:donut_app_4sa/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final Function(String, String) onAddToCart;  // Función pasada desde HomePage

  // lista de donuts
  final List smoothieOnSale = [
    ["Cherry Smoothie", "Green & Fit", "70", Colors.blue, "lib/images/cherrysmoothie.png"],
    ["Carrot Smoothie", "Bon Vivant", "50", Colors.red, "lib/images/zanahoria.png"],
    ["Banana Smoothie", "Raw Love", "65", Colors.purple, "lib/images/banana.png"],
    ["Smoothie de Fresa", "Raw Love", "90", Colors.brown, "lib/images/fresa.png"],
    ["Guava Smoothie", "Green Corner", "55", Colors.yellow, "lib/images/guayaba.png"],
    ["Orange Smoothie", "Green & Fit", "65", Colors.blueGrey, "lib/images/zalamero.png"],
    ["Pineapple Smoothie", "Green Corner", "80", Colors.red, "lib/images/pina.png"],
    ["Smoothie de sandia", "Bon Vivant", "85", Colors.blueAccent, "lib/images/sandia.png"],
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
