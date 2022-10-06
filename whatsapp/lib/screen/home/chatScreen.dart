import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List image = [
    "assets/images/1.jpeg",
    "assets/images/2.webp",
    "assets/images/3.webp",
    "assets/images/4.jpeg",
    "assets/images/5.jpeg",
    "assets/images/6.jpeg",
    "assets/images/7.jpeg",
    "assets/images/8.jpeg",
    "assets/images/9.jpeg",
    "assets/images/10.jpeg",
  ];
  List Name = [
    "Aniruddh",
    "Hardik",
    "Utsav",
    "Komal",
    "Mihir",
    "Priya",
    "Milan",
    "Sahil",
    "Kishan",
    "Ashok",
    "Sunita",
  ];
  List Number = [
    "6353788643",
    "9687158649",
    "8980551647",
    "9687524134",
    "9874561230",
    "8675239874",
    "9155846124",
    "8645585124",
    "7365436544",
    "6354568141",
    "9778658456",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(itemCount: Name.length,itemBuilder: (context,index){
          return ListTile(
            title: Text("${Name[index]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            subtitle: Text("${Number[index]}"),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(("${image[index]}"),),
            ),
          );
        }),
      ),
    );
  }
}
