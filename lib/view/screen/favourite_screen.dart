import 'package:country_app/controller/country_provider.dart';
import 'package:country_app/model/country_model.dart';
import 'package:country_app/view/widget/country_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  final CountryProvider countryProvider;

   FavouriteScreen({super.key, required this.countryProvider, });

  @override
  Widget build(BuildContext context) {
    ThemeData themedata = Theme.of(context);
    final provide =  Provider.of<CountryProvider>(context);
    return  Column(children: [
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: countryProvider.countries.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
            height: 40,
            width: 50, 
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image: DecorationImage(fit: BoxFit.cover,
                    image: NetworkImage(countryProvider.countries[index].flags!.png!))),
          ),title:Text(countryProvider.countries[index].name!.common!,
                
                style: themedata.textTheme.bodyText1
              ),
              subtitle:Text(countryProvider.countries[index].capital![0],
             
                style: themedata.textTheme.bodyText2
              ),  trailing: IconButton(onPressed: (){},
                icon: Icon(Icons.delete),),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 20.h);
          },
        ),
      ]);
    
  }
}
                  