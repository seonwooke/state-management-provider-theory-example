import 'package:flutter/material.dart';

class SushiModel with ChangeNotifier {
  final String name;
  int number;

  SushiModel({required this.name, required this.number});

  void changeSushiNumber() {
    number += 1;
    notifyListeners();
  }
}
