import 'package:flutter/material.dart';
import 'package:pregmomcare/config/language_constants.dart';
import 'package:pregmomcare/model/usermodel.dart';
import 'package:pregmomcare/screens/bmi_screen.dart';
import 'package:pregmomcare/screens/client_list_screen.dart';
import 'package:pregmomcare/screens/diet_during_preg_screen.dart';
import 'package:pregmomcare/screens/feedback_screen.dart';
import 'package:pregmomcare/screens/pregnancey_care_screen.dart';
import 'package:pregmomcare/screens/danger_sign_screen.dart';
import 'package:share/share.dart';
import 'package:pregmomcare/others/help.dart';
import 'package:pregmomcare/screens/login_screen.dart';
import 'package:pregmomcare/screens/edd_screen.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  late SharedPreferences sharedPreferences;
  UserModel? userModel;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: ExactAssetImage("assets/nav_header.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Row(
                children: [
                  const Expanded(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/logo.png"),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      translation(context).nav_head,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.pregnant_woman_rounded,
                size: 30, color: Color.fromARGB(255, 51, 148, 44)),
            title: Text(translation(context).preg_care),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const PregnanceyCare()));
            },
          ),
          ListTile(
            title: Text(translation(context).preg_diet),
            leading: const Icon(Icons.food_bank,
                size: 30, color: Colors.indigoAccent),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const DietDuringPreg()));
            },
          ),
          ListTile(
            title: Text(translation(context).danger_sign),
            leading: const Icon(Icons.dangerous_rounded,
                size: 30, color: Colors.red),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const PregDangerSign()));
            },
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          ListTile(
            title: Text(translation(context).bmi),
            leading: const Icon(
              Icons.calculate_rounded,
              size: 30,
              color: Colors.amber,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const BMICalculator()));
            },
          ),
          ListTile(
            title: Text(translation(context).edd),
            leading: const Icon(
              Icons.calculate_rounded,
              size: 30,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const EDDCalculator()));
            },
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
          ),
          ListTile(
            title: Text(translation(context).login),
            leading:
                const Icon(Icons.login, size: 30, color: Colors.greenAccent),
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              if (!prefs.containsKey("user")) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const LoginPage();
                  },
                ));
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const ClientList();
                  },
                ));
              }
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8.0, bottom: 8.0),
            child: Text(
              translation(context).more,
            ),
          ),
          ListTile(
            title: Text(translation(context).help),
            leading:
                const Icon(Icons.help_rounded, size: 30, color: Colors.blue),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const HelpPage()));
            },
          ),
          ListTile(
            title: Text(translation(context).feedback),
            leading: const Icon(Icons.feedback_rounded,
                size: 30, color: Colors.blue),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const FeedbackPage()));
            },
          ),
          ListTile(
            title: Text(translation(context).share),
            leading:
                const Icon(Icons.share_rounded, size: 30, color: Colors.blue),
            onTap: () {
              Share.share('check out my website http://10.161.164.237:3000/',
                  subject: 'Look what I made!');
            },
          ),
        ],
      ),
    );
  }
}
