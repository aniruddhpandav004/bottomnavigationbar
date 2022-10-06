import 'package:flutter/material.dart';
import 'package:pageview/screens/chat.dart';
import 'package:pageview/screens/status.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: PageView.builder(itemCount: 10,itemBuilder: (context,index){
            return Chat();
          }
          ),
        ),
      ),
    );
  }
}
