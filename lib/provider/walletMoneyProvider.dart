import 'package:flutter/material.dart';

class walletMoneyProvider extends ChangeNotifier {
  int YourwalletAmount = 0;

  int get walletAmount => YourwalletAmount;

  void addMoney(int amount) {
    YourwalletAmount = YourwalletAmount + amount;
    notifyListeners();
  }

  void deduceAmount(int amount) {
    YourwalletAmount = YourwalletAmount - amount;
    notifyListeners();
  }
}

