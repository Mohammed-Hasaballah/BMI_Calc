// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  const BMIResultScreen({
    Key? key,
    required this.result,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          ' BMI Result ',
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 32,
            ),
            Column(
              children: [
                Text(
                  '$result',
                  style: const TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text(
                    resultHandle(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              color: const Color(0xff333244),
                              child: const SizedBox(
                                height: 50,
                                child: Center(
                                  child: Text(
                                    'BMI',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              color: const Color(0xff333244),
                              child: const SizedBox(
                                height: 50,
                                child: Center(
                                  child: Text(
                                    'Status',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              color: const Color.fromARGB(255, 245, 225, 43),
                              child: const SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    '≤ 18.4',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff333244),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              color: Colors.white,
                              child: const SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Underweight',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff333244),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              color: Colors.green,
                              child: const SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    ' 18.5 - 24.9',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff333244),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              color: Colors.white,
                              child: const SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Normal',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff333244),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              color: const Color.fromARGB(255, 246, 125, 33),
                              child: const SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    '25.0 - 39.9',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff333244),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              color: Colors.white,
                              child: const SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Overweight',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff333244),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          TableCell(
                            child: Container(
                              color: Colors.red,
                              child: const SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    '≥ 40.0',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff333244),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Container(
                              color: Colors.white,
                              child: const SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'Obese',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff333244),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: const Color(0xffe83d67),
              width: double.infinity,
              height: 50.0,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
