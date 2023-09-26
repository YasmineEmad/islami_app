import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{
  String local = "English";

  void changeLanguage(String lang){
    local = lang;
    notifyListeners();
  }
}