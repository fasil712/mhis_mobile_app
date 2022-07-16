import 'package:flutter/material.dart';
import 'package:myapp/screens/diet_during_pregnancy/diet_detail.dart';

class DietDuringPreg extends StatefulWidget {
  const DietDuringPreg({Key? key}) : super(key: key);

  @override
  State<DietDuringPreg> createState() => _DietDuringPregState();
}

class _DietDuringPregState extends State<DietDuringPreg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3E2DC),
      appBar: AppBar(
        title: const Text("Diet During Pregnancy"),
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
                      builder: (context) => const DietDretailPage())),
                  child: const Hero(
                    tag: 'dietDetail',
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
                  "Month 01",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Text("Description month 01"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
