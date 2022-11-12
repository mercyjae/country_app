import 'package:country_app/model/country_model.dart';
import 'package:country_app/controller/country_service.dart';
import 'package:flutter/cupertino.dart';

class CountryProvider extends ChangeNotifier {
  bool isLoading = false;
  List<CountryModel> countries = [];

  CountryProvider() {
    fetchCountries();
  }

  Future<void> fetchCountries() async {
    isLoading = true;
    notifyListeners();
    countries = await CountryService().getCountryList();
    countries.sort((a, b) => a.name!.common!.compareTo(b.name!.common!));
    foundList = countries;
    isLoading = false;
    notifyListeners();
  }

  String lang = "";

  void changeLanguage(String lng) {
    lang = lng;
    notifyListeners();
  }

  List<CountryModel> foundList = [];

  List<CountryModel> searchList = [];
  void filterItems(String items) {
    print("Search Paran ::; $items");
    if (items.isEmpty) {
      searchList = countries;
    } else {
      searchList = countries
          .where(
            (element) => element.name!.common!
                .toLowerCase()
                .contains(items.toLowerCase()),
          )
          .toList();
    }
    foundList = searchList;
    notifyListeners();
  }
}
