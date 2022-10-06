import 'package:flutter/material.dart';
import 'package:sharedpreference/ufils/sharePreference.dart';

class Homeprovider extends ChangeNotifier {
  String? value;
  bool? istrue = false;

  void get() async {
    value = await getSHR();
    notifyListeners();
  }

  void Theme(bool value) {
    istrue = !istrue!;
    istrue = value;
    notifyListeners();
  }

  void testDemoTheme() async {
    istrue = await gettheme();
    print("=========================== $istrue");
  }
}
