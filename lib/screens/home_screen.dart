import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            opacity: 200.0,
            image: AssetImage("assets/backgroundimage.jpg"),
            fit: BoxFit.cover),
      ),
      child: const Center(
        child: Text('Care for mothers',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )), // Foreground widget here
      ),
    );
  }
}
