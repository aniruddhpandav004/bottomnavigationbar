import 'package:flutter/material.dart';

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  int i = 0;
  List screen = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(currentIndex: i,
          onTap: (index){
          setState((){
            i = index;
          })
          },items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: ""),
        ],

        ),
        body: Container(
          alignment: Alignment.center,
          child: screen[i],
        ),
      ),
    );
  }
}
