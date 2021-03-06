import 'package:flutter/material.dart';
import 'package:myapp/model/diet_detail_model.dart';

class DietDretailPage extends StatelessWidget {
  final DietDetialModel item;

  const DietDretailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          children: [
            Image.asset(item.picture),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              item.name,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(item.description),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Back"))
          ],
        )),
      ),
    );
  }
}
