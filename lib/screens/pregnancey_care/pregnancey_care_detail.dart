import 'package:flutter/material.dart';
import 'package:pregmomcare/model/preg_care_model.dart';

class DretailPage extends StatelessWidget {
  final PregnancyCareModel item;
  const DretailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.title)),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          children: [
            Image.asset(item.image),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              item.title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(item.description),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text("Back"))
          ],
        )),
      ),
    );
  }
}
