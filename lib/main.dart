import 'package:country_app/constant/color.dart';
import 'package:country_app/controller/favourites_provider.dart';
import 'package:country_app/controller/theme_provider.dart';
import 'package:country_app/view/screen/country_screen.dart';
import 'package:country_app/controller/country_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // ThemeProvider themeProvider = ThemeProvider();
  // void changeTheme()async{
  //   themeProvider.changeTheme() 
  //   = await themeProvider.darkPreference.getDarkTheme();
  // }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider<CountryProvider>(
                  create: (context) => CountryProvider()),
                  ChangeNotifierProvider<ThemeProvider>(create: (context) => ThemeProvider()),
                   ChangeNotifierProvider<FavouriteProvider>(
                  create: (context) => FavouriteProvider()),
            ],
            child: Consumer<ThemeProvider>(
              builder: (context, theme, child) {
                return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: MyTheme.lightTheme,
                    darkTheme: MyTheme.darkTheme,
                    themeMode: theme.isDark ? ThemeMode.dark: ThemeMode.light,
                     home: const CountryScreen());
              }
            ),
          );
        });
  }
}
