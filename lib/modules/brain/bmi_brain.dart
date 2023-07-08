import 'dart:math';

import 'package:flutter/material.dart';

class BMIBrain {
  final double height;
  final int weight;
  double result = 0;
  String sentence = '';
  Color color = Colors.white;

  Map<String, Map<String, dynamic>> resultHand = {
    "normal": {
      "sentence": "You have a normal BMI.",
      "color": Colors.green,
    },
    "overweight": {
      "sentence": "You are overweight,\nTake care of your health.",
      "color": Colors.orange,
    },
    "obese": {
      "sentence": "You are obese,\nPlease consult a healthcare professional.",
      "color": Colors.red,
    },
    "underweight": {
      "sentence":
          "You are underweight,\nConsider gaining some weight for better health.",
      "color": const Color.fromARGB(255, 245, 225, 43),
    },
  };
  BMIBrain({required this.height, required this.weight});

  double resultCalc() {
    result = weight / pow(height / 100, 2);
    resultHandle();
    return result;
  }

  void resultHandle() {
    if (result >= 18.5 && result <= 24.9) {
      sentence = resultHand["normal"]?["sentence"];
      color = resultHand["normal"]?["color"];
    } else if (result >= 25.0 && result <= 39.9) {
      sentence = resultHand["overweight"]?["sentence"];
      color = resultHand["overweight"]?["color"];
    } else if (result >= 40.0) {
      sentence = resultHand["obese"]?["sentence"];
      color = resultHand["obese"]?["color"];
    } else {
      sentence = resultHand["underweight"]?["sentence"];
      color = resultHand["underweight"]?["color"];
    }
  }
}
