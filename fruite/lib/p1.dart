import 'package:flutter/material.dart';

class Fruit extends StatefulWidget {
  const Fruit({Key? key}) : super(key: key);

  @override
  State<Fruit> createState() => _FruitState();
}

class _FruitState extends State<Fruit> {
  List image = [
    "assets/images/apple.png",
    "assets/images/banana.png",
    "assets/images/broccoli.png",
    "assets/images/carrot.png",
    "assets/images/kiwi.png",
    "assets/images/orange.png",
    "assets/images/peppers.png",
    "assets/images/strawberry.png",
    "assets/images/watermelon.png",
  ];
  List name = [
    "Apple",
    "Banana",
    "Broccli",
    "Carrot",
    "Kiwi",
    "Orange",
    "Pepprers",
    "Strawberry",
    "Watermelon",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffa39c9c),
        appBar: AppBar(
          title: Text(
            "GetX Concepts",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
              ],
            ),
          ),
        ),
      ),
    );
  }
}
