import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Page"),
        actions: [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: const Icon(Icons.contact_page),
        ),

      ]),
      body: const Center(child: Text('Contact Page')),
    );
  }
}
