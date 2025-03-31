import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  //dynamic porque sera de tipo color
  final dynamic donutColor;
  final String imageName;
  final String donutStore;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutPrice,
      required this.donutColor,
      required this.imageName,
      required this.donutStore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        //color: donutColor[50],
        decoration: BoxDecoration(
          color: donutColor[50],
          //esquinas redondeadas
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: donutColor[800]),
                  ),
                ),
              ],
            ),
            //Donut Price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),

            //Donut Flavor text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                donutFlavor,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: donutColor[800]
                    ),
              ),
            ),

            Text(
              donutStore,
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),

            //Icons
            Row(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 50,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 275),
                    child: Text(
                      'Add',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                          ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
