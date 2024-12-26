import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../modal/planets_modal.dart';

class Helper {
  static Helper helper = Helper._();
  Helper._();

  Future<List<PlanetsModal>> getPlanets() async {
    String jsonPlanetsData =
        await rootBundle.loadString('assets/json/planets.json');
    List planets = jsonDecode(jsonPlanetsData);
    List<PlanetsModal> planetsList =
        planets.map((e) => PlanetsModal.fromJson(e)).toList();
    return planetsList;
  }

  static const String themeKey = "themeKey";

  setTheme(bool val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themeKey, val);
  }

  getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getBool(themeKey);
  }
}
