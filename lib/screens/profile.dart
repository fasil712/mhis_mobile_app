import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        actions: const [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(Icons.person),
        ),

      ]),
      body: Center(child: Text('Profile Page')),
    );
  }
}
