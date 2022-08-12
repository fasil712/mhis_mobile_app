import 'package:flutter/material.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/services/register_user_services.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Register Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
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
                TextFormField(
                  controller: _useridcontroller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User ID',
                      hintText: 'Enter valid user id'),
                  // validator: (value) {
                  //   if (value!.isEmpty ||
                  //       !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                  //     return "Enter correct user id";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: _facilitynamecontroller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Facility Name',
                      hintText: 'Enter valid facility name'),
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
                    // validator: (value) {
                    //   if (value!.isEmpty ||
                    //       !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                    //           .hasMatch(value)) {
                    //     return "Enter correct MRN";
                    //   } else {
                    //     return null;
                    //   }
                    // }
                    ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: _registrationdatecontroller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Date of Registation'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: _fnamecontroller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'First Name'),
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
                      if (formkey.currentState!.validate()) {
                        _register();
                        final snackbar =
                            SnackBar(content: const Text("Submitting form"));
                        // ignore: deprecated_member_use
                        _scaffoldKey.currentState!.showSnackBar(snackbar);
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginPage()));
                      } else {
                        errorSnackBar(context, 'Enter all required fields');
                      }
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
