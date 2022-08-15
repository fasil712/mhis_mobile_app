import 'package:flutter/material.dart';

class EDDCalculator extends StatefulWidget {
  const EDDCalculator({Key? key}) : super(key: key);

  @override
  State<EDDCalculator> createState() => _EDDCalculatorState();
}

class _EDDCalculatorState extends State<EDDCalculator> {
  int day = 01;
  int month = 11;
  int year = 2021;

  int result = 0;

  var days = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30
  ];
  var months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  var years = [
    2013,
    2014,
    2015,
    2016,
    2017,
    2018,
    2019,
    2020,
    2021,
    2022,
    2023,
    2024,
    2025
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F7FF),
      appBar: AppBar(
        backgroundColor: const Color(0XFF282842),
        title: const Text("Estimated Date of Delivery"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Enter Today's date"),
              const SizedBox(
                height: 10,
              ),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Day'),
                borderRadius: BorderRadius.circular(10),
                value: day,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: days.map((int days) {
                  return DropdownMenuItem(
                    value: days,
                    child: Text("$days"),
                  );
                }).toList(),
                onChanged: (int? newValue) {
                  setState(() {
                    day = newValue!;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Month'),
                borderRadius: BorderRadius.circular(10),
                value: month,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: months.map((int months) {
                  return DropdownMenuItem(
                    value: months,
                    child: Text("$months"),
                  );
                }).toList(),
                onChanged: (int? newValue) {
                  setState(() {
                    month = newValue!;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Year'),
                borderRadius: BorderRadius.circular(10),
                value: year,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: years.map((int years) {
                  return DropdownMenuItem(
                    value: years,
                    child: Text("$years"),
                  );
                }).toList(),
                onChanged: (int? newValue) {
                  setState(() {
                    year = newValue!;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = day + month;
                    });
                  },
                  child: Text('Calculate')),
              const SizedBox(
                height: 10,
              ),
              Text("Result : $result")
            ],
          ),
        ),
      ),
    );
  }
}
