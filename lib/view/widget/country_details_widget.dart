
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CountryDetailsWidget extends StatelessWidget {
  final String text;
  final String value;
  const CountryDetailsWidget({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style:Theme.of(context).textTheme.bodyText1
        ),
        SizedBox(width: 8.w),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyText2
        ),
      ],
    );
  }
}
