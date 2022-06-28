import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart';

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
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              child: Card(
                shadowColor: Colors.blueGrey[900],
                clipBehavior: Clip.antiAlias,
                child: Column(children: [
                  ListTile(
                    leading: const Icon(Icons.arrow_drop_down_circle),
                    title: const Text("Card title 01"),
                    subtitle: Text('First Text subtitle',
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
              margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
