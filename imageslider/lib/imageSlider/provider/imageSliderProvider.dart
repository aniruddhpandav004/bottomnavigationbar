import 'package:flutter/material.dart';

class ImageSliderProvider extends ChangeNotifier{
  List imageList = [
    "assets/image/p10.jpeg",
    "assets/image/p2.jpeg",
    "assets/image/p3.jpeg",
    "assets/image/p4.jpeg",
    "assets/image/p5.webp",
    "assets/image/p6.jpeg",
    "assets/image/p7.webp",
    "assets/image/p8.jpeg",
    "assets/image/p9.jpeg",
    "assets/image/p1.jpeg",
  ];
  int i = 0;
  void changePosition(int index)
  {
    i = index;
    notifyListeners();
  }
}