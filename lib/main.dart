import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:myapp/bmi.dart';
import 'package:myapp/contact.dart';
import 'package:myapp/mainhomepage.dart';
import 'package:myapp/profile.dart';

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
        title: const Text('BottomNavigationBar Sample'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          Badge(
            shape: BadgeShape.circle,
            badgeContent: const Text(
              '1',
              style: TextStyle(color: Colors.white),
            ),
            badgeColor: Colors.red,
            position: BadgePosition.topEnd(top: 5.0),
            padding: const EdgeInsets.all(5.0),
            child: const Icon(Icons.notifications),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Row(
                  children: [
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
                        "Codes Insider",
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
              title: Text("Home"),
              leading: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MainHomePage()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text("Profile"),
              leading: IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {},
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Profile()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text("Contact"),
              leading: IconButton(
                icon: Icon(Icons.contact_page),
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
                icon: const Icon(Icons.calculate),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => BMI_Calculator()));
              },
            )
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: Card(
                shadowColor: Colors.blueGrey[900],
                clipBehavior: Clip.antiAlias,
                child: Column(children: [
                  ListTile(
                    leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text("Card title 01"),
                    subtitle: Text(
                      'First Text subtitle',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  const Image(
                      image: NetworkImage(
                          'https://www.cdc.gov/reproductivehealth/features/maternal-depression/images/feature-maternal-health-depression-2021.png?_=20351')),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text('View')),
                      ElevatedButton(
                          onPressed: () {}, child: const Text('Next'))
                    ],
                  )
                ]),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(children: [
                  ListTile(
                    leading: const Icon(Icons.circle),
                    title: const Text("Card title 1"),
                    subtitle: Text(
                      'Secondary Text',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  const Image(
                      image: NetworkImage(
                          'https://www.cdc.gov/reproductivehealth/features/maternal-depression/images/feature-maternal-health-depression-2021.png?_=20351')),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text('View')),
                      ElevatedButton(
                          onPressed: () {}, child: const Text('Edit'))
                    ],
                  )
                ]),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
