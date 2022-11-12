import 'package:carousel_slider/carousel_slider.dart';
import 'package:country_app/constant/color.dart';
import 'package:country_app/model/country_model.dart';
import 'package:country_app/widget/country_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CountryDetailsScreen extends StatelessWidget {
  final CountryModel countryModel;
  CountryDetailsScreen({Key? key, required this.countryModel})
      : super(key: key);
  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          
            CarouselSlider(
                carouselController: controller,
                items: [
     Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(fit: BoxFit.cover,
                      image: NetworkImage(countryModel.flags!.png!,))),
            ),
                  // Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  //   child: Image.network(countryModel.flags!.png.toString(),fit: BoxFit.cover,)),
                  countryModel.coatOfArms == null
                      ? SizedBox()
                      : 
                      Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(fit: BoxFit.cover,
                      image: NetworkImage(countryModel.coatOfArms!.png.toString())))),
                     
                ],
                options: CarouselOptions(
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    padEnds: false,
                    height: 200,
                    viewportFraction: 1)),
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
                      value: countryModel.languages.toString()),
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
                      value: countryModel.currencies!.toString()),
                  SizedBox(height: 4.h),
                  const CountryDetailsWidget(
                    text: 'GDP:',
                    value: 'US\$3.400 billion',
                  ),
                  SizedBox(height: 24.h),
                  CountryDetailsWidget(
                      text: 'Time zone:',
                      value: countryModel.timezones.toString()),
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
