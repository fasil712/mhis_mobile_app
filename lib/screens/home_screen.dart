import 'package:flutter/material.dart';
import 'package:pregmomcare/config/language_constants.dart';
import 'package:pregmomcare/config/colors_constants.dart';
import 'package:pregmomcare/main.dart';
import 'package:pregmomcare/screens/bmi_screen.dart';
import 'package:pregmomcare/screens/diet_during_preg_screen.dart';
import 'package:pregmomcare/screens/edd_screen.dart';
import 'package:pregmomcare/screens/pregnancey_care_screen.dart';
import 'package:pregmomcare/screens/danger_sign_screen.dart';
import 'package:pregmomcare/screens/services_item_screen.dart';
import 'package:pregmomcare/widgets/doctor_list.dart';
import 'package:pregmomcare/widgets/item_carousel.dart';
import 'package:pregmomcare/model/language_model.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarBgColor,
        title: Text(translation(context).homePage),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<LanguageModel>(
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
              onChanged: (LanguageModel? language) async {
                if (language != null) {
                  Locale _locale = await setLocale(language.languageCode);
                  MyApp.setLocale(context, _locale);
                }
              },
              items: LanguageModel.languageList()
                  .map<DropdownMenuItem<LanguageModel>>(
                    (e) => DropdownMenuItem<LanguageModel>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: const TextStyle(fontSize: 30),
                          ),
                          Text(e.name)
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
      drawer: const DrawerPage(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Carousel Lsit section
            const ItemCarousel(),
            const SizedBox(
              height: 20.0,
            ),

            //Services List section
            Text(
              translation(context).services,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const ServicesList(),
            const SizedBox(
              height: 10.0,
            ),

            //Doctors List section
            Text(
              translation(context).doctors,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const DoctorLsit(),
          ],
        ),
      ),
    );
  }
}
