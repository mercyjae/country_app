import 'package:country_app/model/country_model.dart';
import 'package:country_app/controller/country_service.dart';
import 'package:flutter/material.dart';

enum ProviderState { loading, errorOccured, loaded }

class CountryProvider extends ChangeNotifier {
  bool isLoading = false;
  String stateMessage = "";
  ProviderState state = ProviderState.loading;
  List<CountryModel> countries = [];

  CountryProvider() {
    fetchCountries();
  }

  Future<void> fetchCountries() async {
    try {
      state = ProviderState.loading;
      notifyListeners();
      countries = await CountryService().getCountryList();
      countries.sort((a, b) => a.name!.common!.compareTo(b.name!.common!));
      foundList = countries;
      state = ProviderState.loaded;
      notifyListeners();
    } catch (error) {
      state = ProviderState.errorOccured;
      stateMessage = "Error: $error";
    
      notifyListeners();
    }
  }

  List<CountryModel> foundList = [];

  List<CountryModel> searchList = [];
  void filterItems(String items) {
 
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
