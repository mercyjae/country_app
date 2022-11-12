import 'package:country_app/constant/color.dart';
import 'package:country_app/controller/country_provider.dart';
import 'package:country_app/widget/continent_tile.dart';
import 'package:country_app/widget/language_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void showFilterBottomSheet(BuildContext context) {
  final countryProvider = Provider.of<CountryProvider>(context, listen: false);
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    builder: (contex) {
      return Container(
        height: 530,
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
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
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
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){}, child: Text("Reset",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
                  minimumSize: Size(100,40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.black))),),
                  ElevatedButton(onPressed: (){}, child: Text("Show results"),
                    style: ElevatedButton.styleFrom(backgroundColor:AppColors.yellowColor,
                  minimumSize: Size(200,40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),
                  )))
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
