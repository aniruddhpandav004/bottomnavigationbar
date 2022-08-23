import 'package:flutter/material.dart';
import 'package:stickereditor/stickereditor.dart';

class StickerEditor extends StatefulWidget {
  const StickerEditor({Key? key}) : super(key: key);

  @override
  State<StickerEditor> createState() => _StickerEditorState();
}

class _StickerEditorState extends State<StickerEditor> {

  List<Color> color = [
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.purple,
    Colors.pink,
    Colors.tealAccent,
    Colors.teal,
    Colors.lightBlue,
    Colors.blueGrey,
    Colors.indigo,
    Colors.orange,
    Colors.deepOrange,
    Colors.lightBlueAccent,
  ];
  List<String> image = [
    'assets/'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("STICKER EDITOR",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.tealAccent,
          actions: [Icon(Icons.menu)],
          leading: Icon(Icons.arrow_back),
        ),
        body:
      ),
    );
  }
}
