import 'package:flutter/material.dart';
import 'package:myapp/others/help.dart';
import 'package:myapp/screens/diet_during_pregnancy/diet_during_preg_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/pregnancey_care/pregnancey_care_screen.dart';
import 'package:share/share.dart';
import 'package:myapp/contact.dart';
import 'package:myapp/profile.dart';
import 'bmi/bmi_screen.dart';
import 'edd.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HMIS App'),
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_rounded)),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(child: Text("Login")),
                const PopupMenuItem(child: Text("Register")),
              ];
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
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
              title: const Text("Pregnancey care"),
              leading: IconButton(
                icon: const Icon(Icons.pregnant_woman_rounded),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const PregnanceyCare()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text("Duity during Pregnancey"),
              leading: IconButton(
                icon: const Icon(Icons.rule_rounded),
                onPressed: () {},
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const DietDuringPreg()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text("Pregnancey danger signs"),
              leading: IconButton(
                icon: const Icon(Icons.dangerous_rounded),
                onPressed: () {},
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Contact()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text("Care and Hygne"),
              leading: IconButton(
                icon: const Icon(Icons.notifications_none_rounded),
                onPressed: () {},
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Contact()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text("BMI"),
              leading: IconButton(
                icon: const Icon(Icons.calculate_rounded),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => BMI_Screen()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text("EDD"),
              leading: IconButton(
                icon: const Icon(Icons.calculate_rounded),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const EDDCalculator()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text("Login"),
              leading: IconButton(
                icon: const Icon(Icons.login),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const LoginPage()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text("Help"),
              leading: IconButton(
                icon: const Icon(Icons.help_rounded),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const HelpPage()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text("Share"),
              leading: IconButton(
                icon: const Icon(Icons.share_rounded),
                onPressed: () {
                  Share.share('check out my website https://example.com',
                      subject: 'Look what I made!');
                },
              ),
              onTap: () {
                Share.share('check out my website https://example.com',
                    subject: 'Look what I made!');
              },
            )
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_rounded),
            label: 'Video Conference',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
