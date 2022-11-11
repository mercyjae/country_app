import 'package:country_app/model/country_model.dart';
import 'package:country_app/service/country_service.dart';
import 'package:flutter/cupertino.dart';

class CountryProvider extends ChangeNotifier{
bool isLoading = false;
List<CountryModel> countries = [];

CountryProvider(){
  fetchCountries();
}

Future<void> fetchCountries()async{
  isLoading = true;
  notifyListeners();
  countries = await CountryService().getCountryList();
  countries.sort((a,b)=> a.name!.common!.compareTo(b.name!.common!));
  isLoading = false;
  notifyListeners();
}


}