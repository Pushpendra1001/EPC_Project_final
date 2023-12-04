import 'package:flutter/material.dart';

class AppModeProvider extends ChangeNotifier {
  bool AppMode = true;

  bool get appMode => AppMode;

  void ChangeToPassenger() {
    if (appMode == true) {
      AppMode = true;
      notifyListeners();
    }
  }

  void ChangeToDriver() {
    if (appMode == false) {
      AppMode = false;
      notifyListeners();
    }
  }

  void ChangeMode() {
    AppMode = !AppMode;
    notifyListeners();
  }
}
