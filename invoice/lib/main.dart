
import 'package:flutter/material.dart';
import 'package:invoice/screens/shopScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => shopScreen(),
      },
    ),
  );
}
