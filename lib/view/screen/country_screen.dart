import 'package:country_app/constant/color.dart';
import 'package:country_app/controller/country_provider.dart';
import 'package:country_app/widget/country_tile.dart';
import 'package:country_app/widget/country_widget.dart';
import 'package:country_app/widget/filter_bottom_sheet.dart';
import 'package:country_app/widget/languge._bottom_sheet.dart';
import 'package:country_app/widget/search_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        backgroundColor: AppColors.whiteColor,
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 100,
                    height: 50,
                  ),
                  Icon(Icons.wb_sunny_outlined),
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
                      showLanguaugeBottomsheet(context);
                    },
                    containerWidth: 73.w,
                    color: AppColors.whiteColor,
                    icon: Icons.language,
                    text: "EN",
                  ),
                  CountryTile(
                    onTap: () {
                      showFilterBottomSheet(context);
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
                    return CountryBuildNameWidget(
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
