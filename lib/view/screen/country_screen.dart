import 'package:country_app/constant/color.dart';
import 'package:country_app/controller/country_provider.dart';
import 'package:country_app/controller/theme_provider.dart';
import 'package:country_app/widget/continent_tile.dart';
import 'package:country_app/widget/country_tile.dart';
import 'package:country_app/widget/country_widget.dart';
import 'package:country_app/widget/filter_tile.dart';
import 'package:country_app/widget/language_tile.dart';

import 'package:country_app/widget/search_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
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

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore",style: Theme.of(context).textTheme.headline3),
                  Consumer<ThemeProvider>(
                    builder: (context,theme,child) {
                      return 
                      InkWell(onTap: (){theme.changeTheme();},
                        child:theme.isLightTheme
                         ? SvgPicture.asset(
                              'assets/sun.svg',
                              color: Colors.black,
                            )
                          : SvgPicture.asset(
                              'assets/moon.svg',
                              
                            )
                     
                      );
                    }
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              SearchField(),
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
                              return  LanguageTile();
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
              Text(
                'A',
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.searchIconColor,
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: countryProvider.foundList.length,
                  itemBuilder: (context, index) {
                    return CountryWidget(
                      countryModel: countryProvider.foundList[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20.h);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
