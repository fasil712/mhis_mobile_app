import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors.dart';
import 'package:pregmomcare/widgets/prefile_card.dart';

const department = "Health Scince";
const email = "abeale007@gmail.com";
const phone = "+251930571728"; // not real number :)
const location = "Bahir dar, Ethiopia";

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                backgroundImage: AssetImage('assets/avatar.jpg'),
              ),
              const Text(
                "Dr. Abebe Alemu",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color.fromARGB(255, 20, 20, 34),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                ),
              ),
              const Text(
                "Gynacologist",
                style: TextStyle(
                    fontSize: 30,
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
              ProfileCard(text: phone, icon: Icons.phone, onPressed: () {}),
              ProfileCard(text: email, icon: Icons.email, onPressed: () {}),
              ProfileCard(
                  text: department, icon: Icons.school, onPressed: () {}),
              ProfileCard(
                  text: location, icon: Icons.location_city, onPressed: () {}),
            ],
          ),
        ));
  }
}
