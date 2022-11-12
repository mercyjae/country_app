import 'package:country_app/constant/color.dart';
import 'package:country_app/controller/country_provider.dart';
import 'package:country_app/widget/continent_tile.dart';
import 'package:country_app/widget/language_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void showFilterBottomSheet(BuildContext context) {
  final countryProvider = Provider.of<CountryProvider>(context, listen: false);
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    builder: (context) {
      return Container(
        height: 550,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filter',
                   style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17.sp)
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.withOpacity(0.6)),
                      child: Icon(
                        Icons.close,
                        size: 15,
                      ))
                ],
              ),
              ExpansionTile(
                title: Text('Continent'),
                trailing: Icon(Icons.keyboard_arrow_down),
                children: [
                  ContinentTile(
                    title: 'Africa',
                  ),
                  ContinentTile(
                    title: 'Antartica',
                  ),
                  ContinentTile(
                    title: 'Asia',
                  ),
                  ContinentTile(
                    title: 'Australia',
                  ),
                  ContinentTile(
                    title: 'Europe',
                  ),
                  ContinentTile(
                    title: 'North America',
                  ),
                  ContinentTile(
                    title: 'South America',
                  ),
                ],
              ),
               ExpansionTile(
                title: Text('Time Zone'),
                trailing: Icon(Icons.keyboard_arrow_down),
                children: [
                  ContinentTile(
                    title: 'GMT+1:00',
                  ),
                  ContinentTile(
                    title: 'GMT+2:00',
                  ),
                  ContinentTile(
                    title: 'GMT+3:00',
                  ),
                  ContinentTile(
                    title: 'GMT+4:00',
                  ),
                  ContinentTile(
                    title: 'GMT+5:00',
                  ),
                  ContinentTile(
                    title:'GMT+6:00',
                  ),
                  ContinentTile(
                    title: 'GMT+7:00',
                  ),
                    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Reset",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(100, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.black))),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text("Show results"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.yellowColor,
                          minimumSize: Size(200, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )))
                ],
              ),
                ],
              ),
            
            ],
          ),
        ),
      );
    },
  );
}
