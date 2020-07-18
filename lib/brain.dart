import 'dart:math';

class Calculate {
  int bmiHeight;
  int bmiWeight;
  Calculate({this.bmiHeight, this.bmiWeight});
  double _bmi;

  String calculation() {
    _bmi = bmiWeight / pow(bmiHeight / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "overweight";
    } else if (_bmi > 18.5) {
      return "normal";
    } else {
      return "underweight";
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return "You have higher than normal body weight. Try to exercise more";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have less than normal body weight. Try to eat a bit more";
    }
  }
}
