import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageTile extends StatefulWidget {
  const LanguageTile({super.key});

  @override
  State<LanguageTile> createState() => _LanguageTileState();
}

class _LanguageTileState extends State<LanguageTile> {
  String groupValue = 'English';
  @override
  Widget build(BuildContext context) {
        ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Language',
                    style: themeData.textTheme.bodyText1!.
                    copyWith(fontSize: 20.sp,fontWeight: FontWeight.bold)),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bahasa', style:themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Bahasa",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Deutsch', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Deutsch",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('English', style:themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "English",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Française', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Française",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Italiano', style: themeData.textTheme.bodyText1,),
                Radio(
                  activeColor: Colors.black,
                  value: "Italiano",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Português', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Português",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pу́сский', style:themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Pу́сский",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Svenska', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Svenska",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Türkçe', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Türkçe",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('普通话', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "普通话",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('بالعربية', style:themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "بالعربية",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('বাঙ্গালী', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "বাঙ্গালী",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
