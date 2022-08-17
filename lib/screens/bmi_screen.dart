import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pregmomcare/config/language_constants.dart';
import 'package:pregmomcare/config/colors_constants.dart';
import 'package:pregmomcare/screens/bmi_result_screen.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  double height = 180.0;
  int weight = 40;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarBgColor,
        title: Text(
          translation(context).bmi,
        ),
      ),
      body: Column(
        children: [
          /*Male or Female Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.male,
                                size: 100.0,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              ),
                            ]),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: isMale
                              ? Colors.blue
                              : const Color.fromARGB(255, 16, 19, 35),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.female,
                                size: 100.0,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white.withOpacity(0.8),
                                ),
                              ),
                            ]),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: !isMale
                              ? const Color.fromRGBO(233, 30, 99, 1)
                              : const Color.fromARGB(255, 16, 19, 35),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /*Height Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: const Color.fromARGB(255, 16, 19, 35),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${height.round()}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 60.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Text(
                            "CM",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 80.0,
                        max: 220.0,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                        activeColor: const Color.fromARGB(255, 160, 161, 173),
                        inactiveColor: const Color.fromARGB(255, 88, 89, 104),
                        thumbColor: const Color.fromARGB(255, 230, 20, 73),
                      ),
                    ]),
              ),
            ),
          ),

          /*Weight and Age Section*/
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          "$weight",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 60.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              heroTag: 'Weight-',
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              heroTag: 'Weight+',
                              mini: true,
                              child: const Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: const Color.fromARGB(255, 16, 19, 35),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          "$age",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 60.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              heroTag: 'age-',
                              mini: true,
                              child: const Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              heroTag: 'age+',
                              mini: true,
                              child: const Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      color: Color.fromARGB(255, 16, 19, 35),
                    ),
                  ),
                ),
              ],
            ),
          )),

          /*Calculate Button Section*/
          Container(
            width: double.infinity,
            height: 75.0,
            color: const Color.fromARGB(255, 230, 20, 73),
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMIResultScreen(
                        result: result,
                        age: age,
                        isMale: isMale,
                      ),
                    ));
              },
              child: const Text(
                "CALCULATE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
