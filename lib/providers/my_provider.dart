import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  String local = "en";
  ThemeMode theme = ThemeMode.light;

  void changeTheme(ThemeMode mode){
    theme = mode;
    notifyListeners();
  }

  void changeLanguage(String lang){
    local = lang;
    notifyListeners();
  }
}