import 'package:flutter/material.dart';
import 'package:myapp/model/danger_sign_model.dart';

class DangerSignDetail extends StatelessWidget {
  final DangerSignModel item;

  const DangerSignDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
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
              item.name,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(item.description, style: const TextStyle(fontStyle: FontStyle.italic),),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back"))
          ],
        )),
      ),
    );
  }
}
