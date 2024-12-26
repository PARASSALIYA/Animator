import 'package:flutter/material.dart';

import '../helper/helper.dart';
import '../modal/planets_modal.dart';

class PlanetsProvider with ChangeNotifier {
  List<PlanetsModal> planets = [];

  void getPlanets() async {
    planets = await Helper.helper.getPlanets();
    notifyListeners();
  }
}
