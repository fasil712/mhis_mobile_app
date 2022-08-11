import 'package:flutter/material.dart';
import 'package:myapp/screens/preg_danger_sign/pregnancy_danger_sign_screen.dart';
import 'package:myapp/screens/pregnancey_care/pregnancey_care_screen.dart';
import 'package:share/share.dart';
import 'package:myapp/others/help.dart';
import 'package:myapp/screens/bmi/bmi_screen.dart';
import 'package:myapp/screens/diet_during_pregnancy/diet_during_preg_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/edd/edd.dart';


class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: ExactAssetImage("assets/download.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Row(
                children: const [
                  Expanded(
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 40,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      "Maternal Health Care App",
                      style: TextStyle(
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
                color: Color.fromARGB(255, 51, 148, 44)),
            title: const Text("Pregnancey care"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const PregnanceyCare()));
            },
          ),
          ListTile(
            title: const Text("Diet during Pregnancey"),
            leading: const Icon(Icons.food_bank, color: Colors.indigoAccent),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const DietDuringPreg()));
            },
          ),
          ListTile(
            title: const Text("Pregnancey danger signs"),
            leading: const Icon(Icons.dangerous_rounded, color: Colors.red),
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
            title: const Text("Body Mass Index"),
            leading: const Icon(
              Icons.calculate_rounded,
              color: Colors.amber,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => BMI_Screen()));
            },
          ),
          ListTile(
            title: const Text("Expected Date Delivery"),
            leading: const Icon(
              Icons.calculate_rounded,
              color: Colors.amber,
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
            title: const Text("Login"),
            leading: const Icon(Icons.login, color: Colors.greenAccent),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const LoginPage()));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 8.0, bottom: 8.0),
            child: Text(
              'More',
            ),
          ),
          ListTile(
            title: const Text("Help"),
            leading: const Icon(Icons.help_rounded, color: Colors.blue),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const HelpPage()));
            },
          ),
          ListTile(
            title: const Text("Share"),
            leading: const Icon(Icons.share_rounded, color: Colors.blue),
            onTap: () {
              Share.share('check out my website https://example.com',
                  subject: 'Look what I made!');
            },
          )
        ],
      ),
    );
  }
}
