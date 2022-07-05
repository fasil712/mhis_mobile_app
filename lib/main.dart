import 'package:flutter/material.dart';
import 'package:myapp/api/screens/home.dart';
import 'package:myapp/others/help.dart';
import 'package:share/share.dart';
import 'package:myapp/contact.dart';
import 'package:myapp/login.dart';
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
      backgroundColor: const Color(0xFFE3E2DC),
      appBar: AppBar(
        title: const Text('HMIS App'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_rounded)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
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
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Home()));
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
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Profile()));
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
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Contact()));
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
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Contact()));
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
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(2),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        children: [
          Container(
            width: 300,
            height: 150,
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Colors.white,
              elevation: 6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(8.0)),
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: const Icon(Icons.person),
                  ),
                  const Text(
                    "Pregnancey Care",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Description of Pregnancey Care",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.normal),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text('View'),
                        onPressed: () {/* ... */},
                      ),
                      ElevatedButton(
                        child: const Text('Edit'),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 300,
            height: 150,
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Colors.white,
              elevation: 6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(8.0)),
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: const Icon(Icons.person),
                  ),
                  const Text(
                    "Pregnancey Care",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Description of Pregnancey Care",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.normal),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text('View'),
                        onPressed: () {/* ... */},
                      ),
                      ElevatedButton(
                        child: const Text('Edit'),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 300,
            height: 150,
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Colors.white,
              elevation: 6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(8.0)),
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: const Icon(Icons.person),
                  ),
                  const Text(
                    "Pregnancey Care",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Description of Pregnancey Care",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.normal),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text('View'),
                        onPressed: () {/* ... */},
                      ),
                      ElevatedButton(
                        child: const Text('Edit'),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
         Container(
            width: 300,
            height: 150,
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Colors.white,
              elevation: 6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(8.0)),
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: const Icon(Icons.person),
                  ),
                  const Text(
                    "Pregnancey Care",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Description of Pregnancey Care",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.normal),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text('View'),
                        onPressed: () {/* ... */},
                      ),
                      ElevatedButton(
                        child: const Text('Edit'),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 300,
            height: 150,
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Colors.white,
              elevation: 6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(8.0)),
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: const Icon(Icons.person),
                  ),
                  const Text(
                    "Pregnancey Care",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Description of Pregnancey Care",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.normal),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text('View'),
                        onPressed: () {/* ... */},
                      ),
                      ElevatedButton(
                        child: const Text('Edit'),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
         Container(
            width: 300,
            height: 150,
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Colors.white,
              elevation: 6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(8.0)),
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: const Icon(Icons.person),
                  ),
                  const Text(
                    "Pregnancey Care",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Description of Pregnancey Care",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.normal),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text('View'),
                        onPressed: () {/* ... */},
                      ),
                      ElevatedButton(
                        child: const Text('Edit'),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 300,
            height: 150,
            padding: const EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: Colors.white,
              elevation: 6,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(8.0)),
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: const Icon(Icons.person),
                  ),
                  const Text(
                    "Pregnancey Care",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Description of Pregnancey Care",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.normal),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text('View'),
                        onPressed: () {/* ... */},
                      ),
                      ElevatedButton(
                        child: const Text('Edit'),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
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
