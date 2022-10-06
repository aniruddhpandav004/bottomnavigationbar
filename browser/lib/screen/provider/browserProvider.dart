import 'package:flutter/material.dart';

class BrowserProvider extends ChangeNotifier
{
  String url = "https://www.google.co.in/";
  int progressWeb = 0;

  void changeNewUrl(String link)
  {
    url = link;
    notifyListeners();
  }
  void newProgress(int progress)
  {
    progressWeb = progress;
    notifyListeners();
  }
}