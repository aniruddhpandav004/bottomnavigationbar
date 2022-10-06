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
        Navigator.pushReplacementNamed(context, '2');
      },
    );
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        i = i + 1 / 3.5;
      });
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/images/logo.png"),
                ),
              ),
              Text("from", style: TextStyle(fontSize: 20, color: Colors.black),),
              Text("Meta", style: TextStyle(fontSize: 40, color: Colors.green),),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
