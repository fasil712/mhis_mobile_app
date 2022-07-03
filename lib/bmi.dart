import 'package:flutter/material.dart';

// ignore: camel_case_types
class BMI_Calculator extends StatefulWidget {
  const BMI_Calculator({Key? key}) : super(key: key);

  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}

// ignore: camel_case_types
class _BMI_CalculatorState extends State<BMI_Calculator> {
  final double sideboxHeight = 10.0;
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  double _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.details))
      ]),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: sideboxHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'height in cm',
                  icon: Icon(Icons.trending_up),
                ),
              ),
              SizedBox(height: sideboxHeight),
              TextField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'weight in kg',
                  icon: Icon(Icons.line_weight),
                ),
              ),
              SizedBox(height: sideboxHeight),
              ElevatedButton(
                child: const Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: calculateBMI,
              ),
              SizedBox(height: sideboxHeight),
              Text(
                
                _result == null ? "Enter Value" : _result.toStringAsFixed(2),
                style: const TextStyle(
                  color: Color.fromARGB(255, 84, 73, 73),
                  fontSize: 19.4,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;
    setState(() {});
  }
}
