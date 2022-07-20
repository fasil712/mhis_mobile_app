import 'package:flutter/material.dart';
import 'package:myapp/model/danger_sign_model.dart';

class DangerSignDetail extends StatelessWidget {
  final DangerSignModel item;

  const DangerSignDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Center(child: Text(item.name)),
    );
  }
}
