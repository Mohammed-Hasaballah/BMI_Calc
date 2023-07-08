import 'dart:math';

class BMIBrain {
  final double height;
  final int weight;
  double result = 0;

  BMIBrain({required this.height, required this.weight});

  double resultCalc() {
    result = weight / pow(height / 100, 2);
    return result;
  }

  String resultHandle() {
    if (result >= 18.5 && result <= 24.9) {
      return 'You have a normal BMI.';
    }
    if (result >= 25.0 && result <= 39.9) {
      return 'You are overweight.\nTake care of your health.';
    }
    if (result >= 40.0) {
      return 'You are obese.\nPlease consult a healthcare professional.';
    }
    return 'You are underweight.\nConsider gaining some weight for better health.';
  }
}
