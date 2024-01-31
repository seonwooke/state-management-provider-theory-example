import 'package:flutter/material.dart';

class DrinkModel with ChangeNotifier {
  final String name;
  int number;

  DrinkModel({required this.name, required this.number});

  void changeDrinkNumber() {
    number += 1;
    notifyListeners();
  }
}
