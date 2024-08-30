import 'package:flutter/foundation.dart';

class SliderProvider with ChangeNotifier {
  double _opacity = 0.4;

  double get opacityValue => _opacity;

  void setOpacityValue(double value) {
    _opacity = value;
    notifyListeners();
  }
}
