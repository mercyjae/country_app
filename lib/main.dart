import 'package:country_app/country_details_screen.dart';
import 'package:country_app/country_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428,926),
      builder: (context,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: CountryDetailsScreen()
        );
      }
    );
  }
}
