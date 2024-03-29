import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors_constants.dart';

class BMIResultScreen extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;

  // ignore: use_key_in_widget_constructors
  const BMIResultScreen(
      {required this.result, required this.age, required this.isMale});

  @override
  Widget build(BuildContext context) {
    String _message;
    if (result < 18.5) {
        _message = "You are underweight";
      } else if (result < 25) {
        _message = 'You body is fine';
      } else if (result < 30) {
        _message = 'You are overweight';
      } else {
        _message = 'You are obese';
      }
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarBgColor,
        title: const Text(
          "BMI RESULT",
        ),
      ),
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 174, 186, 195),
          padding: const EdgeInsets.all(6.0),
          height: 500,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Your Body Mass Index Result",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Gender: ${isMale ? 'Male' : 'Female'}",
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Result: ${result.round()}",
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Message: $_message",
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Age: $age",
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
