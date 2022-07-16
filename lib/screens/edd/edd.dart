import 'package:flutter/material.dart';

class EDDCalculator extends StatefulWidget {
  const EDDCalculator({Key? key}) : super(key: key);

  @override
  State<EDDCalculator> createState() => _EDDCalculatorState();
}

class _EDDCalculatorState extends State<EDDCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Estimated Date of Delivery"),
      ),
      body: const SafeArea(
        child: Center(
          child: Text("Estimated Date of Delivery"),
        ),
      ),
    );
  }
}
