import 'package:flutter/material.dart';

class AppModeProvider extends ChangeNotifier {
  bool AppMode = true;

  bool get appMode => AppMode;

  void ChangeToPassenger() {
    AppMode = true;
    notifyListeners();
  }

  void ChangeToDriver() {
    AppMode = false;
    notifyListeners();
  }

  void ChangeMode() {
    AppMode = !AppMode;
    notifyListeners();
  }
}
