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
            ],
            child: const MaterialApp(
                debugShowCheckedModeBanner: false, home: CountryScreen()),
          );
        });
  }
}
