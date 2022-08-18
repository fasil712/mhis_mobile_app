import 'package:flutter/material.dart';
import 'package:pregmomcare/screens/bmi_screen.dart';
import 'package:pregmomcare/screens/danger_sign_screen.dart';
import 'package:pregmomcare/screens/diet_during_preg_screen.dart';
import 'package:pregmomcare/screens/edd_screen.dart';
import 'package:pregmomcare/screens/pregnancey_care_screen.dart';
import 'package:pregmomcare/widgets/services_item.dart';
import '../config/language_constants.dart';

class ServicesList extends StatefulWidget {
  const ServicesList({Key? key}) : super(key: key);

  @override
  State<ServicesList> createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
  @override
  Widget build(BuildContext context) {
    
    String pregImage = "assets/pregnancy_care/image01.jpg";
    String pregName = translation(context).preg_care;
    String pregDesc = translation(context).preg_care_desc;
    String dangerSignImage = "assets/pregnancy_care/image02.jpg";
    String dangerSignName = translation(context).danger_sign;
    String dangerSignDesc = translation(context).danger_sign_desc;
    String dietImage = "assets/pregnancy_care/image03.jpg";
    String dietName = translation(context).preg_diet;
    String dietDesc = translation(context).preg_diet_desc;
    String bmiImage = "assets/pregnancy_care/image04.jpg";
    String bmiName = translation(context).bmi;
    String bmiDesc = translation(context).bmi_desc;
    String eddImage = "assets/pregnancy_care/image05.jpg";
    String eddName = translation(context).edd;
    String eddDesc = translation(context).edd_desc;

    return SizedBox(
      child: Column(
        children: [
          ServicesCard(
              image: pregImage,
              name: pregName,
              desc: pregDesc,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const PregnanceyCare()));
              }),
          ServicesCard(
              image: dangerSignImage,
              name: dangerSignName,
              desc: dangerSignDesc,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const PregDangerSign()));
              }),
          ServicesCard(
              image: dietImage,
              name: dietName,
              desc: dietDesc,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const DietDuringPreg()));
              }),
          ServicesCard(
              image: bmiImage,
              name: bmiName,
              desc: bmiDesc,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const BMICalculator()));
              }),
          ServicesCard(
              image: eddImage,
              name: eddName,
              desc: eddDesc,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const EDDCalculator()));
              }),
        ],
      ),
    );
  }
}
