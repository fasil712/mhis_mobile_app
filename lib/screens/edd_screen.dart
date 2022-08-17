import 'package:flutter/material.dart';
import 'package:pregmomcare/config/language_constants.dart';
import 'package:pregmomcare/config/colors_constants.dart';

class EDDCalculator extends StatefulWidget {
  const EDDCalculator({Key? key}) : super(key: key);

  @override
  State<EDDCalculator> createState() => _EDDCalculatorState();
}

class _EDDCalculatorState extends State<EDDCalculator> {
  DateTime currentDate = DateTime.now();

  final _lmpController = TextEditingController();
  final _todayController = TextEditingController();

  Future<void> _selectTodayDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2040));

    if (pickedDate != null && pickedDate != currentDate)
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        currentDate = pickedDate;
        _todayController.text = currentDate.toString();
        DateUtils.dateOnly(currentDate);
      });
  }

  Future<void> _selectLmpDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        currentDate = pickedDate;
        _lmpController.text = currentDate.toString();
      });
  }

  String dueDate = "2019-10-22 00:00:00.000";
  String gastetionalAge = "3 Weeks 6 Days";
  int threeMonth = 90; // 3 month = 90 days
  int oneYear = 365; // 1 year = 365 days

  result() async {
    DateTime lmpFromField = DateTime.parse(_lmpController.text);
    DateTime currentDateFromFild = DateTime.parse(_todayController.text);
    DateTime minus3Month = lmpFromField.subtract(Duration(days: threeMonth));

    int cycleOfMonth = oneYear - 2; //Most women's cycles are 28 days

    int days = currentDateFromFild.difference(lmpFromField).inDays;

    int week = days ~/ 7;
    int day = days % 7;

    setState(() {
      dueDate = minus3Month.add(Duration(days: cycleOfMonth + 7)).toString();
      gastetionalAge = "$week Weeks $day Days";
    });
  }

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F7FF),
      appBar: AppBar(
        backgroundColor: const Color(0XFF282842),
        title: Text(translation(context).edd),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10), // <= No more error here :)
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      'First day of last period',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.datetime,
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                        controller: _lmpController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "YYYY-MM-DD",
                          suffix: IconButton(
                            icon: const Icon(
                              Icons.calendar_month,
                              color: Colors.blue,
                            ),
                            onPressed: () => _selectLmpDate(context),
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Today\'s date',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 60,
                      child: TextFormField(
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                        keyboardType: TextInputType.datetime,
                        controller: _todayController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "YYYY-MM-DD",
                          suffix: IconButton(
                            icon: const Icon(
                              Icons.calendar_month,
                              color: Colors.blue,
                            ),
                            onPressed: () => _selectTodayDate(context),
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.only(
                    left: 15, right: 10, top: 10, bottom: 20),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: AppColors.btnColor,
                          minimumSize: const Size(140, 50)),
                      onPressed: () {
                        if (_lmpController.text.isNotEmpty &&
                            _todayController.text.isNotEmpty) {
                          result();
                        } else {
                          errorSnackBar(
                              context, "Enter LMP's and TODAY's Date");
                        }
                      },
                      child: const Text(
                        'Calculate',
                        style: TextStyle(
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: AppColors.btnColor,
                          minimumSize: const Size(140, 50)),
                      onPressed: () {
                        _lmpController.clear();
                        _todayController.clear();
                      },
                      child: const Text(
                        'Re-Calculate',
                        style: TextStyle(
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
             
              Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10), // <= No more error here :)
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      "Estimated due date :",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      dueDate,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "Estimated gestational age :",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      gastetionalAge,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "This is an estimated date of when your baby is due. Babies rarely keep to an exact timetable, so your full-term pregnancy can be anywhere from 37 and 42 weeks.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

errorSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red,
    content: Text(text),
    duration: const Duration(seconds: 1),
  ));
}
