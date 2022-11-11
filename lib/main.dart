import 'package:country_app/country_details_screen.dart';
import 'package:country_app/country_screen.dart';
import 'package:country_app/provider/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

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
        return MultiProvider(
          providers: [ChangeNotifierProvider<CountryProvider>(create: (context)=> CountryProvider())],
          child: 
             MaterialApp(
              debugShowCheckedModeBanner: false,
              home: CountryScreen()
            ),
    );}
        );
    
    
  }
}
