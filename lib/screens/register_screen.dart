import 'package:flutter/material.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/services/user_services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _facilitynamecontroller = TextEditingController();
  final _mrncontroller = TextEditingController();
  final _registrationdatecontroller = TextEditingController();
  final _fnamecontroller = TextEditingController();
  final _lnamecontroller = TextEditingController();
  final _grandfathernamecontroller = TextEditingController();
  final _agecontroller = TextEditingController();
  final _sexcontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _phonenumbercontroller = TextEditingController();
  final _regioncontroller = TextEditingController();
  final _woredacontroller = TextEditingController();
  final _kebelecontroller = TextEditingController();

  _register() {
    var data = {
      'facilityname': _facilitynamecontroller.text,
      'mrn': _mrncontroller.text,
      'registrationdate': _registrationdatecontroller.text,
      'firstname': _fnamecontroller,
      'lastname': _lnamecontroller,
      'grandfathername': _grandfathernamecontroller,
      'age': _agecontroller,
      'sex': _sexcontroller,
      'email': _emailcontroller,
      'phonenumber': _phonenumbercontroller,
      'region': _regioncontroller,
      'woreda': _woredacontroller,
      'kebele': _kebelecontroller,
    };
    registerUser(
        _facilitynamecontroller.text,
        _mrncontroller.text,
        _registrationdatecontroller.text,
        _fnamecontroller.text,
        _lnamecontroller.text,
        _grandfathernamecontroller.text,
        _agecontroller.text,
        _sexcontroller.text,
        _emailcontroller.text,
        _phonenumbercontroller.text,
        _regioncontroller.text,
        _woredacontroller.text,
        _kebelecontroller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Register Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Center(
                child: SizedBox(
                    width: 200,
                    height: 150,
                    child: Image.asset('assets/avatar.jpg')),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _facilitynamecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Facility Name',
                    hintText: 'Enter valid facility name'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _mrncontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'MRN',
                    hintText: 'Enter valid MRN'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _registrationdatecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Date of Registation',
                    hintText: 'Enter valid Date'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _fnamecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                    hintText: 'Enter valid name'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _lnamecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                    hintText: 'Enter valid name'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _grandfathernamecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Grand Father Name',
                    hintText: 'Enter valid name'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _agecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Age',
                    hintText: 'Enter valid age'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _sexcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Sex',
                    hintText: 'Enter sex'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _emailcontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _phonenumbercontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                    hintText: 'Enter valid phone number'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _regioncontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Region',
                    hintText: 'Enter Region'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _woredacontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Woreda',
                    hintText: 'Enter Woreda'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _kebelecontroller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Kebele',
                    hintText: 'Enter Kebele'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    _register();
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const LoginPage()));
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const LoginPage()));
                },
                child: const Text(
                  'Early User? Login Account',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
