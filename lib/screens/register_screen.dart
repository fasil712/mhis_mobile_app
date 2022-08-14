import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors.dart';
import 'package:pregmomcare/screens/login_screen.dart';
import 'package:pregmomcare/services/register_user_services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _useridcontroller = TextEditingController();
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
    registerUser(
        _useridcontroller.text,
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

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarBgColor,
        title: const Text("Register Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.grey, Colors.grey]),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  )),
              child: const Center(
                child: CircleAvatar(
                  backgroundColor: AppColors.appbarBgColor,
                  radius: 38,
                  child: CircleAvatar(
                    radius: 36,
                    backgroundImage: AssetImage("assets/avatar.jpg"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formkey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _useridcontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'User ID'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter correct user id";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _facilitynamecontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Facility Name'),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return "Enter correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        controller: _mrncontroller,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: 'MRN'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter correct MRN";
                          } else {
                            return null;
                          }
                        }),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _registrationdatecontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Date of Registation'),
                      keyboardType: TextInputType.datetime,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _fnamecontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'First Name'),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return "Enter correct fname";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _lnamecontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Last Name'),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return "Enter correct lname";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _grandfathernamecontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Grand Father Name'),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return "Enter correct gfname";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _agecontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Age'),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _sexcontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Sex'),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        controller: _emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: 'Email'),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                                  .hasMatch(value)) {
                            return "Enter correct email";
                          } else {
                            return null;
                          }
                        }),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        controller: _phonenumbercontroller,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Phone Number'),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                                  .hasMatch(value)) {
                            return "Enter correct Phone Number";
                          } else {
                            return null;
                          }
                        }),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _regioncontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Region',
                          hintText: 'Enter Region'),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _woredacontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Woreda',
                          hintText: 'Enter Woreda'),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: _kebelecontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Kebele',
                          hintText: 'Enter Kebele'),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  _register();
                                  secSnackBar(context, 'Secussully Registered');
                                } else {
                                  errorSnackBar(
                                      context, 'Enter all required fields');
                                }
                              },
                              child: const Text("Register")),
                          const SizedBox(
                            width: 15.0,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                _useridcontroller.clear();
                                _facilitynamecontroller.clear();
                                _mrncontroller.clear();
                                _registrationdatecontroller.clear();
                                _fnamecontroller.clear();
                                _lnamecontroller.clear();
                                _grandfathernamecontroller.clear();
                                _agecontroller.clear();
                                _sexcontroller.clear();
                                _emailcontroller.clear();
                                _phonenumbercontroller.clear();
                                _regioncontroller.clear();
                                _woredacontroller.clear();
                                _kebelecontroller.clear();
                              },
                              child: const Text("Clear"))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginPage()));
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
          ],
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

secSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.green,
    content: Text(text),
    duration: const Duration(seconds: 1),
  ));
}
