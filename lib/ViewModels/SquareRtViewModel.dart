import 'dart:math';
import 'package:scoped_model/scoped_model.dart';

class SquareRtViewModel extends Model {
  void calculate(double number) {
    print(number);
    if(number < 1) {
      result = 0;
    }
    else {
      result = sqrt(number);
    }

    notifyListeners();
  }

  double result = 0.0;
}