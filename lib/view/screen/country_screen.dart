import 'package:country_app/constant/color.dart';
import 'package:country_app/controller/country_provider.dart';
import 'package:country_app/controller/theme_provider.dart';
import 'package:country_app/view/screen/favourite_screen.dart';
import 'package:country_app/view/widget/country_section.dart';
import 'package:country_app/view/widget/country_tile.dart';
import 'package:country_app/view/widget/filter_tile.dart';
import 'package:country_app/view/widget/language_tile.dart';

import 'package:country_app/view/widget/search_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:provider/provider.dart';


class CountryScreen extends StatefulWidget {
  const CountryScreen({Key? key}) : super(key: key);

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final countryProvider = Provider.of<CountryProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Consumer<ThemeProvider>(builder: (context, theme, child) {
                      return InkWell(
                          onTap: () async{
                           //  SharedPreferences mSharedPrefs = await SharedPreferences.getInstance();
                           // theme.changeTheme();
                            theme.isDark ? theme.isDark = false
                      : theme.isDark = true;
                          },
                          child: theme.isDark
                              ? SvgPicture.asset(
                                  'assets/moon.svg',
                                ):SvgPicture.asset(
                                  'assets/sun.svg',
                                  color: Colors.black,
                                )
                             );
                    }),
                    Text("Explore",
                        style: Theme.of(context).textTheme.headline3),

                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> 
                          FavouriteScreen(countryProvider: countryProvider)));
                        }, icon: const Icon(Icons.favorite,color: Colors.red,))
                   
                  ],
                ),
                SizedBox(height: 24.h),
                const SearchField(),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CountryTile(
                      onTap: () {
                        showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                            )),
                            context: context,
                            builder: (context) {
                              return const LanguageTile();
                            });
                      },
                      containerWidth: 73.w,
                      color: AppColors.whiteColor,
                      icon: Icons.language,
                      text: "EN",
                    ),
                    CountryTile(
                      onTap: () {
                        showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                            )),
                            context: context,
                            builder: (context) {
                              return const FilterTile();
                            });
                      },
                      containerWidth: 96.w,
                      color: AppColors.containerBgColor,
                      icon: Icons.filter_alt_outlined,
                      text: "Filter",
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                CountrySection(countryProvider: countryProvider, letter: 'A'),
                CountrySection(countryProvider: countryProvider, letter: 'B'),
                CountrySection(countryProvider: countryProvider, letter: 'C'),
                CountrySection(countryProvider: countryProvider, letter: 'D'),
                CountrySection(countryProvider: countryProvider, letter: 'E'),
                CountrySection(countryProvider: countryProvider, letter: 'F'),
                CountrySection(countryProvider: countryProvider, letter: 'G'),
                CountrySection(countryProvider: countryProvider, letter: 'H'),
                CountrySection(countryProvider: countryProvider, letter: 'I'),
                CountrySection(countryProvider: countryProvider, letter: 'J'),
                CountrySection(countryProvider: countryProvider, letter: 'K'),
                CountrySection(countryProvider: countryProvider, letter: 'L'),
                CountrySection(countryProvider: countryProvider, letter: 'M'),
                CountrySection(countryProvider: countryProvider, letter: 'N'),
                CountrySection(countryProvider: countryProvider, letter: 'O'),
                CountrySection(countryProvider: countryProvider, letter: 'P'),
                CountrySection(countryProvider: countryProvider, letter: 'Q'),
                CountrySection(countryProvider: countryProvider, letter: 'R'),
                CountrySection(countryProvider: countryProvider, letter: 'S'),
                CountrySection(countryProvider: countryProvider, letter: 'T'),
                CountrySection(countryProvider: countryProvider, letter: 'U'),
                CountrySection(countryProvider: countryProvider, letter: 'V'),
                CountrySection(countryProvider: countryProvider, letter: 'W'),
                CountrySection(countryProvider: countryProvider, letter: 'X'),
                CountrySection(countryProvider: countryProvider, letter: 'Y'),
                CountrySection(countryProvider: countryProvider, letter: 'Z'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
