import 'package:flutter/material.dart';

class EDDCalculator extends StatefulWidget {
  const EDDCalculator({Key? key}) : super(key: key);

  @override
  State<EDDCalculator> createState() => _EDDCalculatorState();
}

class _EDDCalculatorState extends State<EDDCalculator> {
  DateTime currentDate = DateTime.now();

  final _lmpController = TextEditingController();
  final _todayController = TextEditingController();

  Future<void> _selectNowDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      // ignore: curly_braces_in_flow_control_structures
      setState(() {
        currentDate = pickedDate;
        _todayController.text = currentDate.toString();
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

  String edd = "Null";
  
  result() {
    DateTime dueDate = DateTime.parse(_lmpController.text);
    //DateTime gaDate = DateTime.parse(_lmpController.text);
    setState(() {
      edd = dueDate.subtract(const Duration(days: 90)).toString();
    });
  }

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F7FF),
      appBar: AppBar(
        backgroundColor: const Color(0XFF282842),
        title: const Text("Estimated Date of Delivery"),
      ),
      body: Center(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('LMP'),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Date is required";
                  } else {
                    return null;
                  }
                },
                controller: _lmpController,
                decoration: InputDecoration(
                  labelText: "LMP",
                  hintText: "lmp",
                  suffix: IconButton(
                    icon: const Icon(Icons.calendar_month),
                    onPressed: () => _selectLmpDate(context),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const Text('TODAY'),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Date is required";
                  } else {
                    return null;
                  }
                },
                controller: _todayController,
                decoration: InputDecoration(
                  labelText: "TODAY",
                  hintText: "today",
                  suffix: IconButton(
                    icon: const Icon(Icons.calendar_month),
                    onPressed: () => _selectNowDate(context),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  result();
                },
                child: const Text('Calculate'),
              ),
              Text("Result : $edd")
            ],
          ),
        ),
      ),
    );
  }
}
