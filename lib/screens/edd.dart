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
      backgroundColor: const Color(0XFFF7F7FF),
      appBar: AppBar(
        backgroundColor: const Color(0XFF282842),
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
