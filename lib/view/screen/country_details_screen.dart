
import 'package:country_app/constant/color.dart';
import 'package:country_app/model/country_model.dart';
import 'package:country_app/widget/country_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CountryDetailsScreen extends StatelessWidget {
  final CountryModel countryModel;
  CountryDetailsScreen({Key? key, required this.countryModel})
      : super(key: key);
  PageController controller = PageController();
  int yourActiveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
     
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            size: 30.sp,
           
          ),
        ),
        title: Text(
          countryModel.name!.common.toString(),
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
            Expanded(
              child: Stack(
                children: [
                  PageView(
                    controller: controller,
                    children: [
                      Container(
                        //margin: EdgeInsets.only(bottom: 90),
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: NetworkImage(   
                                  countryModel.flags!.png!.toString(),
                                ))),
                      ),
                      // Container(
                      //   height: 50,
                      //   width: 350,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(10),
                      //       image: DecorationImage(
                      //           fit: BoxFit.cover,
                      //           image: NetworkImage(
                      //             countryModel.maps!.toString(),
                      //           ))),
                      // ),
                      countryModel.coatOfArms == null
                          ? SizedBox()
                          : Container(padding: EdgeInsets.symmetric(),
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(countryModel
                                          .coatOfArms!.png
                                          .toString())))),
                    ],
                  ),
                     Positioned(top: 320.h,
                       child: SmoothPageIndicator(
                                     count: 4,
                                     effect: WormEffect(
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 10.0,
                        dotHeight: 10.0,
                        paintStyle: PaintingStyle.stroke,
                        strokeWidth: 1.5,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.white),
                                     controller: controller,
                                     onDotClicked: ((index) { 
                                       controller.animateToPage(index,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.bounceInOut);
                                     })),
                     ),
                ],
              ),
            ),
         

            SizedBox(height: 24.5.h),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(bottom: 30.h),
                shrinkWrap: true,
                children: [
                  CountryDetailsWidget(
                      text: 'Population:',
                      value: countryModel.population.toString()),
                  SizedBox(height: 4.h),
                  CountryDetailsWidget(
                    text: 'Region:',
                    value: countryModel.region!,
                  ),
                  SizedBox(height: 4.h),
                  CountryDetailsWidget(
                    text: 'Capital:',
                    value: countryModel.capital![0].toString(),
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsWidget(
                    text: 'Motto:',
                    value: 'Virtus unita fortior',
                  ),
                  SizedBox(height: 24.h),
                  CountryDetailsWidget(
                      text: 'Official language:',
                      value: countryModel.languages!.values.first),
                  SizedBox(height: 4.h),
                  CountryDetailsWidget(
                    text: 'Ethic group:',
                    value: countryModel.subregion.toString(),
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsWidget(
                    text: 'Religion:',
                    value: 'Christianity',
                  ),
                  SizedBox(height: 4.h),
                  const CountryDetailsWidget(
                      text: 'Government:', value: 'Democracry'),
                  SizedBox(height: 24.h),
                  CountryDetailsWidget(
                      text: 'Independence:',
                      value: countryModel.independent.toString()),
                  SizedBox(height: 4.h),
                  CountryDetailsWidget(
                    text: 'Area:',
                    value: countryModel.area.toString(),
                  ),
                  SizedBox(height: 4.h),
                  CountryDetailsWidget(
                      text: 'Currency:',
                      value: countryModel.currencies!.values.first['name'],),
                  SizedBox(height: 4.h),
                  const CountryDetailsWidget(
                    text: 'GDP:',
                    value: 'US\$3.400 billion',
                  ),
                  SizedBox(height: 24.h),
                  CountryDetailsWidget(
                      text: 'Time zone:',
                      value: countryModel.timezones.toString().substring(
                          1, countryModel.timezones.toString().length - 1)),
                  SizedBox(height: 4.h),
                  const CountryDetailsWidget(
                    text: 'Date format:',
                    value: '20/12/2020',
                  ),
                  SizedBox(height: 4.h),
                  CountryDetailsWidget(
                      text: 'Dialling code:',
                      value: countryModel.idd!.root.toString()),
                  SizedBox(height: 4.h),
                  CountryDetailsWidget(
                      text: 'Driving side:',
                      value: countryModel.car!.side.toString()),
                  SizedBox(height: 24.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
