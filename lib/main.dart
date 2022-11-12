import 'package:country_app/constant/color.dart';
import 'package:country_app/controller/theme_provider.dart';
import 'package:country_app/view/screen/country_screen.dart';
import 'package:country_app/controller/country_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider<CountryProvider>(
                  create: (context) => CountryProvider()),
                  ChangeNotifierProvider<ThemeProvider>(create: (context) => ThemeProvider())
            ],
            child: Consumer<ThemeProvider>(
              builder: (context, theme, child) {
                return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: MyTheme.lightTheme,
                    darkTheme: MyTheme.darkTheme,
                    themeMode: theme.isLightTheme ? ThemeMode.light: ThemeMode.dark,
                     home: CountryScreen());
              }
            ),
          );
        });
  }
}
