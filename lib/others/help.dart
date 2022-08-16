import 'package:flutter/material.dart';
import 'package:pregmomcare/config/language_constants.dart';
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
          title: Text(translation(context).help)),
      body: ListView(
        children: const <Widget>[
          Padding(padding: EdgeInsets.all(8.0)),
          ExpansionTile(
            title: Text('How to calculate EDD?'),
            subtitle: Text('Calculate estimated date of delivery'),
            children: <Widget>[
              ListTile(
                title: Text(
                    '1. Open navigation bar.\n2. Select "Estimated Date of Delivery" item. \n3. Enter first day of last period. \n4. Enter today\s date. \n5. Press "Calculate" button. \n6. If you want re-calculate press "Re-Calculate" button'),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('How to Calculate BMI?'),
            subtitle: Text('Calculate body mass index'),
            children: <Widget>[
              ListTile(
                title: Text(
                    '1. Open navigation bar.\n2. Select "Body Mass Index" item. \n3. Select your sex MALE or FEMALE. \n4. Round your HEIGHT. \n5. Add or Subtract your WEIGHT. \n6. Add or Subtract your AGE. \n7. Press "CALCULATE" button'),
                subtitle: Text("This help you!"),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('ExpansionTile 1'),
            subtitle: Text('Trailing expansion arrow icon'),
            children: <Widget>[
              ListTile(title: Text('')),
            ],
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
