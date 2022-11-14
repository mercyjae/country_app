import 'package:carousel_slider/carousel_slider.dart';
import 'package:country_app/constant/color.dart';
import 'package:country_app/model/country_model.dart';
import 'package:country_app/view/widget/country_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CountryDetailsScreen extends StatelessWidget {
  final CountryModel countryModel;
  CountryDetailsScreen({Key? key, required this.countryModel})
      : super(key: key);
  CarouselController controller = CarouselController();
  PageController pageController = PageController();
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
            color: Theme.of(context).iconTheme.color,
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
            Stack(
              children: [
                CarouselSlider(
                  carouselController: controller,
                  items: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                        countryModel.flags!.png.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Image.network(
                      countryModel.coatOfArms!.png.toString(),
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Text('Cannot Fetch Coat of Arms Image'),
                        );
                      },
                    ),
                  ],
                  options: CarouselOptions(
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      padEnds: false,
                      height: 220,
                      viewportFraction: 1),
                ),
                Positioned(
                  bottom: 45.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      children: [
                        Container(
                          width: 25.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                              onPressed: controller.previousPage,
                              icon: const Icon(Icons.arrow_back_ios, size: 12)),
                        ),
                        SizedBox(width: 310.w),
                        Container(
                          width: 25.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.6),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                              onPressed: controller.nextPage,
                              icon: const Icon(Icons.arrow_forward_ios,
                                  size: 12)),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 35.h,
                  left: 165.w,
                  child: SmoothPageIndicator(
                      count: 3,
                      effect: const WormEffect(
                          spacing: 5.0,
                          dotWidth: 8.0,
                          dotHeight: 8.0,
                          paintStyle: PaintingStyle.stroke,
                          strokeWidth: 1.5,
                          dotColor: Colors.grey,
                          activeDotColor: Colors.white),
                      controller: pageController,
                      onDotClicked: ((index) {
                        controller.animateToPage(index,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.bounceInOut);
                      })),
                )
              ],
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
                    value: countryModel.currencies!.values.first['name'],
                  ),
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
