import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors_constants.dart';
import 'package:pregmomcare/model/diet_detail_model.dart';

class DietDetailPage extends StatelessWidget {
  final DietDetialModel item;

  const DietDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
          backgroundColor: AppColors.appbarBgColor, title: Text(item.name)),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                item.name,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Image.asset(item.picture),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "BABY'S DEVELOPMENT:",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(item.description01),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "YOUR PHYSICAL SYMPTOMS:",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(item.description02),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "IMPORTANT FOODS TO FOCUS ON IN " +
                        item.name,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(item.description03),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Back"))
            ],
          ),
        ),
      ),
    );
  }
}
