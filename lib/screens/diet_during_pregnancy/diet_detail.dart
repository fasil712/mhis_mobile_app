import 'package:flutter/material.dart';

class DietDretailPage extends StatefulWidget {
  const DietDretailPage({Key? key}) : super(key: key);

  @override
  State<DietDretailPage> createState() => _DietDretailPageState();
}

class _DietDretailPageState extends State<DietDretailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Diet Detail")),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
              children: [
                Hero(
                  tag: 'dietDetail',
                  child: Image.asset("assets/food_list/month01.jpg")),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                        "Month 01",
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(onPressed: (){}, child: const Text("Back"))
              ],
            )),
      ),
    );
  }
}
