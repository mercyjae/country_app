import 'package:country_app/constant/color.dart';
import 'package:country_app/controller/country_provider.dart';
import 'package:country_app/model/country_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchField extends StatefulWidget {
  SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final countryProvider = Provider.of<CountryProvider>(context);
    return SizedBox(
      height: 60.h,
      child: TextFormField(
        controller: searchController, 
        onChanged: ((value) {
          countryProvider.filterItems(value);
        }),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.search,
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.primary,
          hintText: 'Search Country',
          hintStyle:
              Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18.sp),
        ),
      ),
    );
  }
}
