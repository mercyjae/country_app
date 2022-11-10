
import 'dart:convert';

import 'package:country_app/constant/api_constant.dart';
import 'package:country_app/model/country_model.dart';
import 'package:http/http.dart' as http;
class CountryService{

  Future<CountryModel> getCountryList() async{
    try{

    final response = await http.get(Uri.parse(ApiConstant.apiBaseUrl));
    if(response.statusCode == 200){
      var jsonData = jsonDecode(response.body);
      print(jsonData);
      return CountryModel.fromJson(jsonData);
    }else{
      throw Exception('Failed to load weather data');
    }

  }catch(e){
      rethrow;
    }
}}