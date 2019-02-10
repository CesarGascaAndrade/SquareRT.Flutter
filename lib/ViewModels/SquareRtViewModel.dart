import 'dart:math';
import 'package:scoped_model/scoped_model.dart';

class SquareRtViewModel extends Model {
  void calculate(double number) {
    result = sqrt(number);
    print('oli');
    notifyListeners();
  }

  double result = 0.0;
}