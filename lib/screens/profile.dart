import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors_constants.dart';
import 'package:pregmomcare/model/usermodel.dart';
import 'package:pregmomcare/widgets/prefile_card.dart';

class Profile extends StatefulWidget {
  final UserModel userModel;

  const Profile({Key? key, required this.userModel}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var data = widget.userModel.user;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile Page"),
          backgroundColor: AppColors.appbarBgColor,
        ),
        backgroundColor: AppColors.bgColor,
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/doctors_list/receptionist_profile_pic.jpg'),
              ),
              Text(
                data.firstName + " " + data.lastName,
                style: const TextStyle(
                  fontSize: 30.0,
                  color: Color.fromARGB(255, 20, 20, 34),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                ),
              ),
              Text(
                data.role,
                style: const TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 108, 116, 120),
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Source Sans Pro"),
              ),
              const SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              ProfileCard(
                  text: data.phoneNo, icon: Icons.phone, onPressed: () {}),
              ProfileCard(
                  text: data.email, icon: Icons.email, onPressed: () {}),
              ProfileCard(
                  text: data.department, icon: Icons.school, onPressed: () {}),
              ProfileCard(
                  text: data.city, icon: Icons.location_city, onPressed: () {}),
            ],
          ),
        ));
  }
}
