import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';
import 'package:donut_app_4sa/tabs/smoothie_tab.dart';
import 'package:donut_app_4sa/utils/my_tab.dart';
import 'package:donut_app_4sa/utils/shopping_cart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    Column(
      children: [
        const MyTab(
          iconPath: 'lib/icons/donut.png',
        ),
        Text('Donut')
      ],
    ),
    Column(
      children: [
        const MyTab(
          iconPath: 'lib/icons/burger.png',
        ),
        Text('Burger')
      ],
    ),
    Column(
      children: [
        const MyTab(
          iconPath: 'lib/icons/smoothie.png',
        ),
        Text('Smoothie')
      ],
    ),
    Column(
      children: [
        const MyTab(
          iconPath: 'lib/icons/pancakes.png',
        ),
        Text('Pancakes')
      ],
    ),
    Column(
      children: [
        const MyTab(
          iconPath: 'lib/icons/pizza.png',
        ),
        Text('Pizza')
      ],
    ),
  ];

  List<Map<String, dynamic>> cartItems = [];

  // Función para añadir al carrito
  void addToCart(String flavor, String price) {
    setState(() {
      cartItems.add({
        'flavor': flavor,
        'price': price,
      });
    });
  }

  // Función para calcular el total del carrito
  double getCartTotal() {
    double total = 0;
    for (var item in cartItems) {
      total += double.parse(item['price']);
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(children: [
                DonutTab(onAddToCart: addToCart),  
                BurgerTab(onAddToCart: addToCart),  
                SmoothieTab(onAddToCart: addToCart),
                PancakesTab(onAddToCart: addToCart),
                PizzaTab(onAddToCart: addToCart),
              ]),
            ),
            ShoppingCart(
              cartItems: cartItems,
              total: getCartTotal(),
            ),
          ],
        ),
      ),
    );
  }
}
