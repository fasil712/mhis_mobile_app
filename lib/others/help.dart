import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
          backgroundColor: AppColors.appbarBgColor,
          title: const Text("Help Page")),
      body: ListView(
        children: const <Widget>[
          Padding(padding: EdgeInsets.all(8.0)),
          ExpansionTile(
            title: Text('ExpansionTile 1'),
            subtitle: Text('Trailing expansion arrow icon'),
            children: <Widget>[
              ListTile(
                title: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('ExpansionTile 1'),
            subtitle: Text('Trailing expansion arrow icon'),
            children: <Widget>[
              ListTile(
                title: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                subtitle: Text("datadatadatadata"),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          ExpansionTile(
            title: Text('ExpansionTile 1'),
            subtitle: Text('Trailing expansion arrow icon'),
            children: <Widget>[
              ListTile(
                  title: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          ExpansionTile(
            title: Text('ExpansionTile 1'),
            subtitle: Text('Trailing expansion arrow icon'),
            children: <Widget>[
              ListTile(
                  title: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')),
            ],
          ),
        ],
      ),
    );
  }
}
