import 'package:flutter/material.dart';

class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Card"),
          centerTitle: true,
          ),
        body: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
