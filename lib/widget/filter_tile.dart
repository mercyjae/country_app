import 'package:country_app/widget/continent_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterTile extends StatefulWidget {
  const FilterTile({super.key});

  @override
  State<FilterTile> createState() => _FilterTileState();
}

class _FilterTileState extends State<FilterTile> {
  bool continentsOpened = false;
  bool timeZonesOpened = false;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10,vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Filter',
                    style: themeData.textTheme.bodyText1!.copyWith(fontSize: 20.sp,fontWeight: FontWeight.bold)),
                       Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.withOpacity(0.6)),
                      child: const Icon(
                        Icons.close,
                        size: 15,
                      ))
              
              ],
            ),
            IntrinsicHeight(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text('Continents',
                          style: themeData.textTheme.bodyText1),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              continentsOpened = !continentsOpened;
                            });
                          },
                          icon: Icon(continentsOpened
                              ? Icons.expand_more
                              : Icons.expand_less))
                    ],
                  ),
                  continentsOpened
                      ? Column(
                          children: List.generate(
                            7,
                            (index) =>
                                ContinentTile(title: continents[index]),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text('Time Zones',
                          style:  themeData.textTheme.bodyText1),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              timeZonesOpened = !timeZonesOpened;
                            });
                          },
                          icon: Icon(timeZonesOpened
                              ? Icons.expand_more
                              : Icons.expand_less))
                    ],
                  ),
                  timeZonesOpened
                      ? Column(
                          children: List.generate(
                            8,
                            (index) =>
                                ContinentTile (title: timeZones[index]),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List continents = [
  'Africa',
  'Antartica',
  'Asia',
  'Australia',
  'Europe',
  'North America',
  'South America'
];

List timeZones = [
  'GMT-3:00',
  'GMT-2:00',
  'GMT-1:00',
  'GMT+1:00',
  'GMT+2:00',
  'GMT+3:00',
  'GMT+4:00',
  'GMT+5:00'
];