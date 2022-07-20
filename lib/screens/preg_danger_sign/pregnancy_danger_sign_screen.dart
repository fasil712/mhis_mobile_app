import 'package:flutter/material.dart';
import 'package:myapp/screens/preg_danger_sign/danger_sign_detail_screen.dart';

class PregDangerSign extends StatelessWidget {
  const PregDangerSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Pregnancy Danger Signs"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DangerSignDetail()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color.fromARGB(255, 104, 101, 101),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Title 01",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text("Title Description 01"),
                  ],
                ),
              ),
            ),
          ],
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 4, crossAxisSpacing: 4),
        ),
      ),
    );
  }
}
