import 'package:country_app/constant/color.dart';
import 'package:country_app/country_details_screen.dart';
import 'package:country_app/model/country_model.dart';
import 'package:country_app/provider/country_provider.dart';
import 'package:country_app/widget/filter_tile.dart';
import 'package:country_app/widget/languge.dart';
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
  // @override
  // void initState() {
  //   CountryService().getCountryList();
  //   super.initState();
  // }
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
                children: const [
                  Text('Explore'),
                  Icon(Icons.wb_sunny_outlined),
                ],
              ),
              SizedBox(height: 24.h),
              SearchField(),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilterWidget(onTap: (){showLanguaugeBottomsheet(context);},
                    containerWidth: 73.w,
                    color: AppColors.whiteColor,
                    icon: Icons.language,
                    text: "EN",
                  ),
                  FilterWidget(onTap: (){},
                    containerWidth: 96.w,
                    color: AppColors.containerBgColor,
                    //TODO: To change the filter icon
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
                  itemCount: countryProvider.countries.length,
                  itemBuilder: (context, index) {
                    return CountryBuildNameWidget(
                      countryModel: countryProvider.countries[index],
                      // countryName: country.name!.common.toString(),
                      // capital: country.capital.toString(),
                      // imgUrl: country.flags!.png!
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20.h);
                  },
                ),
              ),
              // FutureBuilder<List<CountryModel>>(
              //     future: CountryService().getCountryList(),
              //     builder: (context, snapshot) {
              //       final data = snapshot.data;
              //       if (snapshot.hasData) {
              //         return Expanded(
              //           child: ListView.separated(
              //             itemCount: data!.length,
              //             itemBuilder: (context, index) {
              //               final country = data[index];
              //               return
              //               //Text(country.name!.common!);
              //               CountryBuildNameWidget(
              //                 countryName: country.name!.common!,
              //                 capital: country.capital![0],
              //                 imgUrl: country.flags!.png!

              //               );
              //             },
              //             separatorBuilder: (context, index) {
              //               return SizedBox(height: 20.h);
              //             },
              //           ),
              //         );
              //       } else if (snapshot.hasError) {
              //         return Text(snapshot.error.toString());
              //       } else {
              //         return CircularProgressIndicator();
              //       }
              //     }),
            ],
          ),
        ),
      ),
    );
  }
}

class CountryBuildNameWidget extends StatelessWidget {
  // final String countryName;
  // final String capital;
  // final String imgUrl;
  final CountryModel countryModel;

  const CountryBuildNameWidget({
    Key? key,
    // required this.countryName,
    // required this.capital,
    // required this.imgUrl,
    required this.countryModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            width: 40,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(countryModel.flags!.png!))),
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                countryModel.name!.common!,
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                countryModel.capital.toString(),
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
