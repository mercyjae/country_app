import 'package:country_app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.searchIconColor,
          ),
          filled: true,
          fillColor: AppColors.textFormFieldBgColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          hintText: 'Search Country',
          hintStyle: GoogleFonts.poppins(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.textFormFieldBgColor),
            borderRadius: BorderRadius.circular(4.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.textFormFieldBgColor),
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
      ),
    );
  }
}
