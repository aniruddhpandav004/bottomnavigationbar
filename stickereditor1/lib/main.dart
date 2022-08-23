
import 'package:flutter/material.dart';
import 'package:stckereditor/screen/stickerEditer.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => StickerEditor(),
      },
    ),
  );
}
