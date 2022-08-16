import 'package:flutter/material.dart';
import 'package:pregmomcare/classes/language_constants.dart';
import 'package:pregmomcare/config/colors.dart';
import 'package:pregmomcare/services/feedback_services.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _fullnamecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _phonecontroller = TextEditingController();
  final _messagecontroller = TextEditingController();

  send() {
    sendFeedback(_fullnamecontroller.text, _emailcontroller.text,
        _phonecontroller.text, _messagecontroller.text);
  }

  reset() {
    _fullnamecontroller.clear();
    _emailcontroller.clear();
    _phonecontroller.clear();
    _messagecontroller.clear();
  }

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.appbarBgColor,
        title: Text(translation(context).feedback),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Full Name'),
                      controller: _fullnamecontroller,
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return "Full Name is required";
                        } else {
                          return null;
                        }
                      },
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
                            return "Email is required";
                          } else {
                            return null;
                          }
                        }),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        controller: _phonecontroller,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Phone Number'),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                                  .hasMatch(value)) {
                            return "Phone Number is required";
                          } else {
                            return null;
                          }
                        }),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                        controller: _messagecontroller,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Feedback',
                            hintText: "Say Somthing..."),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Message is Required!";
                          } else {
                            return null;
                          }
                        }),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  send();
                                  secSnackBar(
                                      context, "Tankyou for you feedback");
                                  reset();
                                } else {
                                  errSnackBar(
                                      context, "Enter all required fields");
                                }
                              },
                              child: const Text("Send")),
                          const SizedBox(
                            width: 15.0,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                reset();
                              },
                              child: const Text("Reset"))
                        ],
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

  secSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.green,
      content: Text(text),
      duration: const Duration(seconds: 1),
    ));
  }

  errSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Text(text),
      duration: const Duration(seconds: 1),
    ));
  }
}
