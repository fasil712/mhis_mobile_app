import 'package:flutter/material.dart';

class BottomeNavBar extends StatefulWidget {
  const BottomeNavBar({Key? key}) : super(key: key);

  @override
  State<BottomeNavBar> createState() => _BottomeNavBarState();
}

class _BottomeNavBarState extends State<BottomeNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
