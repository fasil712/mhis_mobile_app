import 'package:flutter/material.dart';

class DangerSignDetail extends StatelessWidget {
  const DangerSignDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Danger Sign Detail")),
      body: const Center(child: Text("Detail")),
    );
  }
}