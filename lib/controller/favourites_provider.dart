import 'package:country_app/model/country_model.dart';
import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier {
  final List<CountryModel> _countries = [];
  List<CountryModel> get countries => _countries;

  void toggeleFavourite(CountryModel item) {
    final isExist = _countries.contains(item);
    if (isExist) {
      _countries.remove(item);
    } else {
      _countries.add(item);
    }
    notifyListeners();
  }

  bool isExist(CountryModel item) {
    final isExist = countries.contains(item);
    return isExist;
  }

  void delete(CountryModel item) {
    _countries.remove(item);
    notifyListeners();
  }
}
