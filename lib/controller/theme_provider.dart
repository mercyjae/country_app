
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
 bool isLightTheme = true;
 void changeTheme(){
  isLightTheme = !isLightTheme;
 notifyListeners();
 }
}