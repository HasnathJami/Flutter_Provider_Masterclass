import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {

  int _counter = 0;
  int get count => _counter;

  void setCount() {
    _counter++;
    notifyListeners();
  }
}
