import 'package:country_app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CountryTile extends StatelessWidget {
  final double containerWidth;
  final Color color;
  final String text;
  final IconData? icon;
  final VoidCallback onTap;
  const CountryTile({
    Key? key,
    required this.containerWidth,
    required this.color,
    required this.text,
    required this.icon, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6.w),
            width: containerWidth,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(4.r),
              border: Border.all(
                width: 1.0.w,
                color: Theme.of(context).colorScheme.secondary
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.containerBoxShadowRgba,
                  blurRadius: 2.r,
                  spreadRadius: 0.0,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: Theme.of(context).iconTheme.color),
                SizedBox(width: 10.w),
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText2
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
