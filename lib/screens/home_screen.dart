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
            const ItemCarousel(),
            const SizedBox(
              height: 20.0,
            ),
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
            // SizedBox(
            //   child: Column(
            //     children: [
            //       GestureDetector(
            //         onTap: () => Navigator.of(context).push(MaterialPageRoute(
            //             builder: (BuildContext context) =>
            //                 const PregnanceyCare())),
            //         child: Card(
            //           elevation: 5,
            //           margin: const EdgeInsets.symmetric(
            //               horizontal: 10, vertical: 6),
            //           child: Container(
            //             padding: const EdgeInsets.all(8),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: [
            //                 const CircleAvatar(
            //                   backgroundColor: AppColors.appbarBgColor,
            //                   radius: 30,
            //                   child: CircleAvatar(
            //                     radius: 28,
            //                     backgroundImage: AssetImage(
            //                       "assets/pregnancy_care/image01.jpg",
            //                     ),
            //                   ),
            //                 ),
            //                 Expanded(
            //                     child: Container(
            //                   padding: const EdgeInsets.only(bottom: 8),
            //                   child: Column(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                             left: 8, right: 8),
            //                         child: Text(
            //                           translation(context).preg_care,
            //                           style: const TextStyle(
            //                               fontSize: 16,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ),
            //                       const SizedBox(
            //                         height: 5.0,
            //                       ),
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                             left: 8, right: 8),
            //                         child: Text(
            //                           translation(context).preg_care_desc,
            //                           style: const TextStyle(
            //                               fontSize: 13,
            //                               fontStyle: FontStyle.normal),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ))
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),

            //       GestureDetector(
            //         onTap: () => Navigator.of(context).push(MaterialPageRoute(
            //             builder: (BuildContext context) =>
            //                 const PregDangerSign())),
            //         child: Card(
            //           elevation: 5,
            //           margin: const EdgeInsets.symmetric(
            //               horizontal: 10, vertical: 6),
            //           child: Container(
            //             padding: const EdgeInsets.all(8),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: [
            //                 const CircleAvatar(
            //                   backgroundColor: AppColors.appbarBgColor,
            //                   radius: 30,
            //                   child: CircleAvatar(
            //                     radius: 28,
            //                     backgroundImage: AssetImage(
            //                       "assets/danger_sign/fever_image05.jpg",
            //                     ),
            //                   ),
            //                 ),
            //                 Expanded(
            //                     child: Container(
            //                   padding: const EdgeInsets.only(bottom: 8),
            //                   child: Column(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                             left: 8, right: 8),
            //                         child: Text(
            //                           translation(context).danger_sign,
            //                           style: const TextStyle(
            //                               fontSize: 16,
            //                               fontWeight: FontWeight.bold,
            //                               fontFamily: 'Roboto'),
            //                         ),
            //                       ),
            //                       const SizedBox(
            //                         height: 5.0,
            //                       ),
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                             left: 8, right: 8),
            //                         child: Text(
            //                             translation(context).danger_sign_desc),
            //                       )
            //                     ],
            //                   ),
            //                 ))
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //       GestureDetector(
            //         onTap: () => Navigator.of(context).push(MaterialPageRoute(
            //             builder: (BuildContext context) =>
            //                 const DietDuringPreg())),
            //         child: Card(
            //           elevation: 5,
            //           margin: const EdgeInsets.symmetric(
            //               horizontal: 10, vertical: 6),
            //           child: Container(
            //             padding: const EdgeInsets.all(8),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: [
            //                 const CircleAvatar(
            //                   backgroundColor: AppColors.appbarBgColor,
            //                   radius: 30,
            //                   child: CircleAvatar(
            //                     radius: 28,
            //                     backgroundImage: AssetImage(
            //                       "assets/food_list/month01.jpg",
            //                     ),
            //                   ),
            //                 ),
            //                 Expanded(
            //                     child: Container(
            //                   padding: const EdgeInsets.only(bottom: 8),
            //                   child: Column(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                             left: 8, right: 8),
            //                         child: Text(
            //                           translation(context).preg_diet,
            //                           style: const TextStyle(
            //                               fontSize: 16,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ),
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                             left: 8, right: 8),
            //                         child: Text(
            //                             translation(context).preg_diet_desc),
            //                       )
            //                     ],
            //                   ),
            //                 ))
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //       GestureDetector(
            //         onTap: () => Navigator.of(context).push(MaterialPageRoute(
            //             builder: (BuildContext context) => const BMIScreen())),
            //         child: Card(
            //           elevation: 5,
            //           margin: const EdgeInsets.symmetric(
            //               horizontal: 10, vertical: 6),
            //           child: Container(
            //             padding: const EdgeInsets.all(8),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: [
            //                 const CircleAvatar(
            //                   backgroundColor: AppColors.appbarBgColor,
            //                   radius: 30,
            //                   child: CircleAvatar(
            //                     radius: 28,
            //                     backgroundImage: AssetImage(
            //                       "assets/bmi.jpg",
            //                     ),
            //                   ),
            //                 ),
            //                 Expanded(
            //                     child: Container(
            //                   padding: const EdgeInsets.only(bottom: 8),
            //                   child: Column(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                             left: 8, right: 8),
            //                         child: Text(
            //                           translation(context).bmi,
            //                           style: const TextStyle(
            //                               fontSize: 16,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ),
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                             left: 8, right: 8),
            //                         child: Text(translation(context).bmi_desc),
            //                       )
            //                     ],
            //                   ),
            //                 ))
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //       GestureDetector(
            //         onTap: () => Navigator.of(context).push(MaterialPageRoute(
            //             builder: (BuildContext context) =>
            //                 const EDDCalculator())),
            //         child: Card(
            //           elevation: 5,
            //           margin: const EdgeInsets.symmetric(
            //               horizontal: 10, vertical: 6),
            //           child: Container(
            //             padding: const EdgeInsets.all(8),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: [
            //                 const CircleAvatar(
            //                   backgroundColor: AppColors.appbarBgColor,
            //                   radius: 30,
            //                   child: CircleAvatar(
            //                     radius: 28,
            //                     backgroundImage: AssetImage(
            //                       "assets/edd.jpg",
            //                     ),
            //                   ),
            //                 ),
            //                 Expanded(
            //                     child: Container(
            //                   padding: const EdgeInsets.only(bottom: 8),
            //                   child: Column(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                             left: 8, right: 8),
            //                         child: Text(
            //                           translation(context).edd,
            //                           style: const TextStyle(
            //                               fontSize: 16,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                       ),
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                             left: 8, right: 8),
            //                         child: Text(translation(context).edd_desc),
            //                       )
            //                     ],
            //                   ),
            //                 ))
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            const SizedBox(
              height: 10.0,
            ),
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
