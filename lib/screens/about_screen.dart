import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors_constants.dart';
import 'package:pregmomcare/config/language_constants.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: Text(translation(context).about),
        backgroundColor: AppColors.appbarBgColor,
      ),
      body: Container(
          height: 400,
          alignment: Alignment.center,
          width: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Image(image: AssetImage("assets/avatar.jpg")),
                    Text("Fasil Getie"),
                    Text("Role")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Image(image: AssetImage("assets/avater.jpg")),
                    Text("Animaw Yitayal"),
                    Text("Role")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Image(image: AssetImage("assets/avater.jpg")),
                    Text("Solomon Maru"),
                    Text("Role")
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
