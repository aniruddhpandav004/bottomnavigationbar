import 'dart:async';

import 'package:flutter/material.dart';

class FleshScreen extends StatefulWidget {
  const FleshScreen({Key? key}) : super(key: key);

  @override
  State<FleshScreen> createState() => _FleshScreenState();
}

class _FleshScreenState extends State<FleshScreen> {
  double i = 0;

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, 'second');
      },
    );
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        i = i + 1 / 3.5;
      });
    });
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "ANIRUDDH PANDAV",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.blue.shade100,
              color: Colors.blue,
              value: i,
            ),
          ],
        ),
      ),
    );
  }
}
