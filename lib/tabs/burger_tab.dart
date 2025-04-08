import 'package:donut_app_4sa/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(String, String) onAddToCart;  // Función pasada desde HomePage

  // lista de donuts
  final List burgerOnSale = [
    ["CheeseBurger", "McDonalds", "100", Colors.blue, "lib/images/hamburguesa-con-queso.png"],
    ["BBQ Burger", "Burger King", "150", Colors.red, "lib/images/bbq.png"],
    ["Guacamole Burger", "Shakeshack", "125", Colors.purple, "lib/images/guacamole.png"],
    ["Jalapeño Burger", "Shakeshack", "170", Colors.brown, "lib/images/jalapeño.png"],
    ["Classic Burger", "Burger King", "125", Colors.brown, "lib/images/hamburguesa clasica.png"],
    ["Vegan Burger", "Chazz", "150", Colors.lightGreen, "lib/images/vegan.png"],
    ["Big Mac", "McDonalds", "185", Colors.yellow, "lib/images/bigmac.png" ],
    ["Fish Burger", "Chazz", "145", Colors.lightBlue, "lib/images/comida-rapida.png"],
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
