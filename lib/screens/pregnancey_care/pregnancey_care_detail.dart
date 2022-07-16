import 'package:flutter/material.dart';

class DretailPage extends StatefulWidget {
  const DretailPage({Key? key}) : super(key: key);

  @override
  State<DretailPage> createState() => _DretailPageState();
}

class _DretailPageState extends State<DretailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail")),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
              children: [
                Hero(
                  tag: 'myHero',
                  child: Image.asset("assets/avatar.jpg")),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                        "Title 01",
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
