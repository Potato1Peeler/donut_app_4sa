import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Prepa 1: Como se va a organizar
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Número de columnas
        crossAxisCount: 2), 
      //Cuantos elementos
      itemCount: 4,
      padding: const EdgeInsets.all(12),
      //Que elemento se construira
      itemBuilder: (context, index){
        return;
      }
      );
  }
}