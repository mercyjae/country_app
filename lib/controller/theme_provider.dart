import 'package:country_app/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
 bool isLightTheme = true;
 void changeTheme(){
  isLightTheme = !isLightTheme;
 notifyListeners();
 }
}