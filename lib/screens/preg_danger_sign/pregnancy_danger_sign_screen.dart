import 'package:flutter/material.dart';
import 'package:myapp/screens/preg_danger_sign/danger_sign_detail_screen.dart';

class PregDangerSign extends StatelessWidget {
  const PregDangerSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
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
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Headache that won't go away or gets worse over time",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 10.0,),
                      Image.asset(
                        "assets/avatar.jpg",
                        height: 200,
                        width: 300,
                      ),
                      const SizedBox(height: 10.0,),
                      const Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                    ],
                  ),
                ),
              ),
            ),
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
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Headache that won't go away or gets worse over time",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                    ],
                  ),
                ),
              ),
            ),
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
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Headache that won't go away or gets worse over time",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                    ],
                  ),
                ),
              ),
            ),
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
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Headache that won't go away or gets worse over time",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                    ],
                  ),
                ),
              ),
            ),
          ],
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, mainAxisSpacing: 4, crossAxisSpacing: 4),
        ),
      ),
    );
  }
}
