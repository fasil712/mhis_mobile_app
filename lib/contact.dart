import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Page"),
        actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(Icons.contact_page),
        ),

      ]),
      body: Center(child: Text('Contact Page')),
    );
  }
}
