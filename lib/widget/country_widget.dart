import 'package:country_app/constant/color.dart';
import 'package:country_app/model/country_model.dart';
import 'package:country_app/view/screen/country_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CountryWidget extends StatelessWidget {
  final CountryModel countryModel;

  const CountryWidget({
    Key? key,
    required this.countryModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData themedata = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return CountryDetailsScreen(
            countryModel: countryModel,
          );
        })));
      },
      child: Row(
        children: [
          Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image: DecorationImage(fit: BoxFit.cover,
                    image: NetworkImage(countryModel.flags!.png!))),
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                countryModel.name!.common!,
                style: themedata.textTheme.bodyText1
              ),
              SizedBox(height: 2.h),
              Text(
                countryModel.capital![0],
                style: themedata.textTheme.bodyText2
              ),
            ],
          ),
        ],
      ),
    );
  }
}
