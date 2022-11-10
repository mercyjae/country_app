import 'package:country_app/constant/color.dart';
import 'package:country_app/country_details_screen.dart';
import 'package:country_app/widget/filter_tile.dart';
import 'package:country_app/widget/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CountryScreen extends StatelessWidget {
  const CountryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Explore'),
                  Icon(Icons.wb_sunny_outlined),
                ],
              ),
              SizedBox(height: 24.h),
              const SearchField(),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilterWidget(
                    containerWidth: 73.w,
                    color: AppColors.whiteColor,
                    icon: Icons.language,
                    text: "EN",
                  ),
                  FilterWidget(
                    containerWidth: 96.w,
                    color: AppColors.containerBgColor,
                    //TODO: To change the filter icon
                    icon: Icons.filter,
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
               // ListView.separated(
               //    itemBuilder: (context, index) {
               //      final country = data[index];
               //      return CountryBuildNameWidget(
               //        countryName: country.name!.common!,
               //        capital: country.capital![0],
               //        //imgUrl: '',
               //      );
               //    },
               //    separatorBuilder: (context, index) {
               //      return SizedBox(height: 20.h);
               //    },
               //    itemCount: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class CountryBuildNameWidget extends StatelessWidget {
  final String countryName;
  final String capital;
 final String imgUrl;
  const CountryBuildNameWidget({
    Key? key,
    required this.countryName,
    required this.capital,
   required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return const CountryDetailsScreen();
        })));
      },
      child: Row(
        children: [
          SizedBox(
            width: 40.w,
            height: 40.h,
            child: FittedBox(child: Image.network(imgUrl)
              // CachedNetworkImage(
              //   imageUrl: imgUrl,
              //   progressIndicatorBuilder: (context, url, downloadProgress) =>
              //       CircularProgressIndicator(value: downloadProgress.progress),
              //   errorWidget: (context, url, error) => const Icon(Icons.error),
              // ),
              // Text(
              //   'A',
              //   style: GoogleFonts.poppins(
              //     fontSize: 14.sp,
              //     fontWeight: FontWeight.w600,
              //     color: AppColors.searchIconColor,
              //   ),
              // ),
            ),
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                countryName,
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                capital,
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.searchIconColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
