import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int counter = 0;

  addCounter() {
    counter++;
    notifyListeners();
  }
}
