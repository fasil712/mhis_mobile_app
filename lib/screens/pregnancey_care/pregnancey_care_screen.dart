import 'package:flutter/material.dart';
import 'package:myapp/screens/pregnancey_care/pregnancey_care_detail.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PregnanceyCare extends StatefulWidget {
  const PregnanceyCare({Key? key}) : super(key: key);

  @override
  State<PregnanceyCare> createState() => _PregnanceyCareState();
}

class _PregnanceyCareState extends State<PregnanceyCare> {
  @override
  Widget build(BuildContext context) {
    void _showToast() => Fluttertoast.showToast(
        msg: 'Button Tapped', toastLength: Toast.LENGTH_SHORT);
    return Scaffold(
      backgroundColor: const Color(0xFFE3E2DC),
      appBar: AppBar(
        title: const Text("Pregnancey Care"),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8.0),
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            elevation: 6.0,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DretailPage())),
                  child: const Hero(
                    tag: 'myHero',
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 53,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 50,
                        backgroundImage: AssetImage("assets/avatar.jpg"),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Title 01",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Text("Description Title 01"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
