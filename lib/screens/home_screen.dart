import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors.dart';
import 'package:pregmomcare/model/doctors_model.dart';
import 'package:pregmomcare/screens/bmi/bmi_screen.dart';
import 'package:pregmomcare/screens/diet_during_pregnancy/diet_during_preg_screen.dart';
import 'package:pregmomcare/screens/preg_danger_sign/pregnancy_danger_sign_screen.dart';
import 'package:pregmomcare/screens/pregnancey_care/pregnancey_care_screen.dart';
import 'package:pregmomcare/services/doctors_list_services.dart';
import 'package:pregmomcare/widgets/item_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ItemCarousel(),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Our Services",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const PregnanceyCare())),
              child: Card(
                elevation: 5,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.appbarBgColor,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(
                            "assets/pregnancy_care/image01.jpg",
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                "Pregnancey Care",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                "Pregnancey Care Desciption",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontStyle: FontStyle.normal),
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const PregDangerSign())),
              child: Card(
                elevation: 5,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.appbarBgColor,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(
                            "assets/danger_sign/fever_image05.jpg",
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                "Danger Sign During Pregnancy",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child:
                                  Text("Danger Sign During Pregnancy desc"),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const DietDuringPreg())),
              child: Card(
                elevation: 5,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.appbarBgColor,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(
                            "assets/food_list/month01.jpg",
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                "Diet During Pregnancy",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Text("Diet During Pregnancy desc"),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const BMIScreen())),
              child: Card(
                elevation: 5,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.appbarBgColor,
                        radius: 30,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(
                            "assets/bmi.jpg",
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                "Body Mass Index Calulator",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8),
                              child: Text("Body Mass Index Calulator Desc"),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Our Doctors",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              children: [
                FutureBuilder<List<DoctorModel>>(
                  future: readJsonData(),
                  builder: (context, data) {
                    if (data.hasError) {
                      return Center(
                        child: Text("${data.error}"),
                      );
                    } else if (data.hasData) {
                      var items = data.data as List<DoctorModel>;
                      return ListView.builder(itemBuilder: (context, index) {
                        final item = items[index];
                        return Column(
                          children: [
                            Card(elevation: 8.0, child: Column(children: [
                              Image.asset(item.picture),
                              Text(item.name),
                              Text(item.role)
                            ]),)
                          ],
                        );
                      });
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ],
            )
          ],
        ));
  }
}
