
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{

 storeTheme() async{
SharedPreferences pref = await SharedPreferences.getInstance();
return pref.getBool('isLightTheme');
}
  
 
 bool isLightTheme = true;
 void changeTheme(){
  isLightTheme = !isLightTheme;
 notifyListeners();
 }


}