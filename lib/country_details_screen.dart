import 'package:country_app/constant/color.dart';
import 'package:country_app/widget/country_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CountryDetailsScreen extends StatelessWidget {
  const CountryDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: AppColors.whiteColor,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            size: 30.sp,
            color: AppColors.blackColor,
          ),
        ),
        title: Text(
          'Afghanistan',
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          children: [
            SizedBox(
              width: 380.w,
              height: 200.h,
              child: FittedBox(
                child: Text(
                  'A',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.searchIconColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.5.h),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(bottom: 30.h),
                shrinkWrap: true,
                children: [
                  const CountryDetailsTextWidget(
                    text: 'Population:',
                    value: '77,354',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Region:',
                    value: 'Europe',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Capital:',
                    value: 'Andora la Vella',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Motto:',
                    value: 'Virtus unita fortior',
                  ),
                  SizedBox(height: 24.h),
                  const CountryDetailsTextWidget(
                    text: 'Official language:',
                    value: 'Catalan',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Ethic group:',
                    value: 'Andorran, Spanish, Portuguese',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Religion:',
                    value: 'Christianity',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Government:',
                    value: 'Parliamentary democracy',
                  ),
                  SizedBox(height: 24.h),
                  const CountryDetailsTextWidget(
                    text: 'Independence:',
                    value: '8th September, 1278',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Area:',
                    value: '467.63 km2',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Currency:',
                    value: 'Euro',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'GDP:',
                    value: 'US\$3.400 billion',
                  ),
                  SizedBox(height: 24.h),
                  const CountryDetailsTextWidget(
                    text: 'Time zone:',
                    value: 'UTC+01',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Date format:',
                    value: 'dd/mm/yyyy',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Dialling code:',
                    value: '+376',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Driving side:',
                    value: 'right',
                  ),
                  SizedBox(height: 24.h),
                  const CountryDetailsTextWidget(
                    text: 'Population:',
                    value: '77,354',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Region:',
                    value: 'Europe',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Capital:',
                    value: 'Andora la Vella',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsTextWidget(
                    text: 'Motto:',
                    value: 'Virtus unita fortior',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
