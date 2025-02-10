import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        //left menu icon
        leading: Icon(
          Icons.menu,
          color: Colors.grey[800],
        ),
        actions: [Icon(Icons.person)],
      ),
    );
  }
}
