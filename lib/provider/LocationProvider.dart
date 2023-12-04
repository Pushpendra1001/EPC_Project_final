import 'package:flutter/material.dart';

class LocationProvider extends ChangeNotifier {
  String fromLocation = "Enter pick location";
  String toLocation = "Enter Drop location";

  String get fromlocation => fromLocation;
  String get tolocation => toLocation;

  void updateFromLocation(String newLocationA) {
    if (newLocationA == "") {
      notifyListeners();
    } else {
      fromLocation = newLocationA;
      notifyListeners();
    }
  }

  void updatetoLocation(String newLocationB) {
    if (newLocationB == "") {
      notifyListeners();
    } else {
      toLocation = newLocationB;
      notifyListeners();
    }
  }
}
