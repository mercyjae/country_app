import 'package:flutter/material.dart';

class LanguageTile extends StatelessWidget {
  final String title;
  final String selected;
  final Function(String) onSelect;
  LanguageTile({super.key, required this.title, this.selected = "", required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
        ),
        Radio(
            value: title,
            activeColor: Colors.pink,
            groupValue: selected,
            onChanged: (String? value) {
              onSelect(value!.toString());
            })
      ],
    );
  }
}