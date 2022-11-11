import 'dart:convert';

import 'package:country_app/constant/api_constant.dart';
import 'package:country_app/model/country_model.dart';
import 'package:http/http.dart' as http;

class CountryService {
  Future<List<CountryModel>> getCountryList() async {
    print('loading......');
    final url = Uri.parse('https://restcountries.com/v3.1/all');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      print(jsonData);
      return List.from(jsonData).map((e) => CountryModel.fromJson(e)).toList();

    } else {
      throw Exception('Failed to load country data');
    }
  }
  
 
  
}
