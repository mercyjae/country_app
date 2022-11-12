import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContinentTile extends StatelessWidget {
  final String title;
   ContinentTile({super.key, required this.title});

  @override
    bool? checkValue = false;
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(title),
        Checkbox(
                    value: checkValue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    activeColor: Colors.purple,
                    onChanged: (bool? newValue) {
                      // setState(() {
                      checkValue = newValue;
                      // });
                    },
                  ),
      ],)
    ],);
  }
}