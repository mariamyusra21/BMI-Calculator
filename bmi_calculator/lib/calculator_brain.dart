import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({ required this.height, required this.weight});

  final double height;
  final int weight;

  double _bmi = 0;

  // BMI = mass in kg / height^2 in meters
  // BMI = (mass is pounds / height^2 in inches)*703

  String calculateBMI() {
    _bmi = weight / pow(height / 3.281, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good Job!!!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }

  }
}
