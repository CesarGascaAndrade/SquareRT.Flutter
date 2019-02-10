import 'dart:math';

import 'package:square_rt/Services/ISquareCalculator.dart';

class SquareRtCalculator  implements ISquareCalculator {
  @override
  double calculate(double number) => sqrt(number);
}