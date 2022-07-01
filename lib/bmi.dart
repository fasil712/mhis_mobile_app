import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BMI_Calculator extends StatefulWidget {
  BMI_Calculator({Key? key}) : super(key: key);

  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}

class _BMI_CalculatorState extends State<BMI_Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("BMI Calculator", style: TextStyle(
                fontSize: 30.0,
                color: Colors.blueGrey[900]
              ),),
            )
          ],
        ),
      ),
    );
  }
}
