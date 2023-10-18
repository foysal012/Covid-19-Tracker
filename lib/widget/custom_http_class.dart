import 'dart:convert';

import 'package:covid_19_tacker/model%20class/world_state_model_class.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CustomHttpClass{

   List<CustomHttpClass> worldData = [];

  Future<WorldStateModelClass> fetchWorldData() async{

    var response = await http.get(Uri.parse("https://disease.sh/v3/covid-19/all"));

    print(response.body);
    print(response.statusCode);

    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return WorldStateModelClass.fromJson(data);
    } else {
      throw Exception("error");
    }

  }


 Future<List<dynamic>> fetchCountriesData() async{

   var response = await http.get(Uri.parse("https://disease.sh/v3/covid-19/countries"));

   print(response.body);
   print(response.statusCode);

   var data = jsonDecode(response.body);

   if(response.statusCode == 200){
     return data;
   } else {
     throw Exception("error");
   }

 }


}
