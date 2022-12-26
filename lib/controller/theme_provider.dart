
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
//DarkPreference darkPreference = DarkPreference();
//  storeTheme() async{
// SharedPreferences pref = await SharedPreferences.getInstance();
// return pref.getBool('isLightTheme');
// }
  
 // bool value = false;
//  bool isLightTheme = true;
//  void changeTheme(){
//   isLightTheme = !isLightTheme;
//   //darkPreference.setDarkTheme(value);
//  notifyListeners();
//  }
   bool _isDark = false;
   MyThemePreferences _preferences = MyThemePreferences();
  bool get isDark => _isDark;

  ThemeProvider() {
    _isDark = false;
    _preferences = MyThemePreferences();
    getPreferences();
  }
//Switching the themes
  set isDark(bool value) {
    _isDark = value;
   _preferences.setTheme(value);
    notifyListeners();
  }

getPreferences()async{
   _isDark = await _preferences.getTheme();
}
}



class MyThemePreferences{
  static const THEME_STATUS = 'THEMESTATUS';

  setTheme(bool value) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('THEME_STATUS',value);
  }


 Future<bool> getTheme() async{
 SharedPreferences pref = await SharedPreferences.getInstance();
 return pref.getBool('THEME_STATUS') ?? false;
  }
}