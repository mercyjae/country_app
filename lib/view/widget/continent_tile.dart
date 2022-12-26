
import 'package:flutter/material.dart';


class FilterWidget extends StatefulWidget {
  final String title;
   const FilterWidget({super.key, required this.title});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
    bool? checkValue = false;

  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(widget.title,style: Theme.of(context).textTheme.bodyText1,),
        Checkbox(
                    value: checkValue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    checkColor:Theme.of(context).scaffoldBackgroundColor,
                    activeColor: Theme.of(context).iconTheme.color,
                    onChanged: (bool? newValue) {
                       setState(() {
                      checkValue = newValue;
                      });
                    },
                  ),
      ],)
    ],);
  }
}
