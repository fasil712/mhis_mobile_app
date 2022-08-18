import 'package:flutter/material.dart';
import 'package:pregmomcare/config/language_constants.dart';
import 'package:pregmomcare/config/colors_constants.dart';

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
          Padding(
            padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
            child: Card(
              elevation: 2,
              child: ExpansionTile(
                title: Text('How to calculate EDD?'),
                subtitle: Text('Calculate estimated date of delivery'),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        '1. Open navigation bar.\n2. Select "Estimated Date of Delivery" item. \n3. Enter first day of last period. \n4. Enter today\'s date. \n5. Press "Calculate" button. \n6. If you want re-calculate press "Re-Calculate" button'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
            child: Card(
              elevation: 2,
              child: ExpansionTile(
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
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
            child: Card(
              elevation: 2,
              child: ExpansionTile(
                title: Text('How to user Login?'),
                subtitle: Text(
                    'Login to the system only the user created by admin first'),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        '1. Open navigation bar.\n2. Select "Login" item. \n3. Fill the required fields correctlly. \n4. Press "Login" button'),
                    subtitle: Text("This help you!"),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
            child: Card(
              elevation: 2,
              child: ExpansionTile(
                title: Text('How to see detail services?'),
                subtitle: Text('See detail by pressing nav item list'),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        'Pregnancy care, \n Diet during pregnancy \n Danger sign during pregnancy'),
                    subtitle: Text("This help you!"),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
            child: Card(
              elevation: 2,
              child: ExpansionTile(
                title: Text('How to add client to the database?'),
                subtitle: Text('The user can to add the client or patient'),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        '1. First loggedin.\n2. Press "Add Client" button. \n3. Fill the required fields correctlly. \n4. Press "Register" button. \n4. Press "Clear" button to clear the fields'),
                    subtitle: Text("This help you!"),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0),
            child: Card(
              elevation: 2,
              child: ExpansionTile(
                title: Text('Help, Feedback, Shere?'),
                subtitle: Text('The customer can send feedback and share'),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        '1. Select Navigation bar.\n2. Help. \n3. Feedback. \n4. Share.'),
                    subtitle: Text("I hope this help you!"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
