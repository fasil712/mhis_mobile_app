import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarBgColor,
        title: const Text("Profile Page"),
        actions: const [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(Icons.person),
        ),

      ]),
      body: const Center(child: Text('Profile Page')),
    );
  }
}
