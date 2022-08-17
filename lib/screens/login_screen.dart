import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:pregmomcare/config/language_constants.dart';
import 'package:pregmomcare/config/colors.dart';
import 'package:pregmomcare/screens/client_list_screen.dart';
import 'package:pregmomcare/others/help.dart';
import 'package:pregmomcare/services/login_auth_service.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _role = 'receptionist';

  var items = [
    'receptionist',
    'doctor',
    'nurse',
    'phrmacist',
    'client',
  ];

  String _username = '';
  String _password = '';

  _login() async {
    if (_username.isNotEmpty && _password.isNotEmpty && _role.isNotEmpty) {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      http.Response response =
          await AuthServices.login(_username, _password, _role);
      Map responseMap = jsonDecode(response.body);
      // print(responseMap);
      if (response.statusCode == 200) {
        sharedPreferences.setString("user", response.body);
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext ctx) => const ClientList()));
      } else {
        errorSnackBar(context, responseMap.values.first);
      }
    } else {
      errorSnackBar(context, 'Enter all required fields');
    }
  }

  final formkey = GlobalKey<FormState>();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarBgColor,
        title: Text(translation(context).login),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.grey, Colors.grey]),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200),
                  )),
              child: const Center(
                child: CircleAvatar(
                  backgroundColor: AppColors.appbarBgColor,
                  radius: 58,
                  child: CircleAvatar(
                    radius: 56,
                    backgroundImage: AssetImage("assets/avatar.jpg"),
                  ),
                ),
              ),
            ),
            Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Username'),
                      onChanged: (value) {
                        _username = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return "Username is required";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is required";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        _password = value;
                      },
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Column(children: [
                      DropdownButtonFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelText: 'Role'),
                        value: _role,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _role = newValue!;
                          });
                        },
                      ),
                    ]),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _login();
                        },
                        child: const Text("Login")),
                    const SizedBox(
                      height: 100,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const HelpPage()));
                      },
                      child: const Text(
                        'New User? See Detail info',
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            )
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
