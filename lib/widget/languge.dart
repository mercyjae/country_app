import 'package:country_app/provider/country_provider.dart';
import 'package:country_app/widget/language_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void showLanguaugeBottomsheet(BuildContext context) {
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
                    'Languages',
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
              LanguageTile(
                title: 'Bahasa',
                selected: countryProvider.lang,
                onSelect: countryProvider.changeLanguage,
              ),
              LanguageTile(
                selected: countryProvider.lang,
                onSelect: countryProvider.changeLanguage,
                title: 'Deutsch',
              ),
              LanguageTile(
                selected: countryProvider.lang,
                onSelect: countryProvider.changeLanguage,
                title: 'English',
              ),
              LanguageTile(
                selected: countryProvider.lang,
                onSelect: countryProvider.changeLanguage,
                title: 'Espanol',
              ),
              LanguageTile(
                selected: countryProvider.lang,
                onSelect: countryProvider.changeLanguage,
                title: 'Francaise',
              ),
              LanguageTile(
                selected: countryProvider.lang,
                onSelect: countryProvider.changeLanguage,
                title: 'Italiano',
              ),
              LanguageTile(
                selected: countryProvider.lang,
                onSelect: countryProvider.changeLanguage,
                title: 'Portugues',
              ),
              LanguageTile(
                selected: countryProvider.lang,
                onSelect: countryProvider.changeLanguage,
                title: 'Pycckuu',
              ),
              LanguageTile(
                selected: countryProvider.lang,
                onSelect: countryProvider.changeLanguage,
                title: 'Svenka',
              ),
              LanguageTile(
                selected: countryProvider.lang,
                onSelect: countryProvider.changeLanguage,
                title: 'Turkce',
              ),
            ],
          ),
        ),
      );
    },
  );
}
