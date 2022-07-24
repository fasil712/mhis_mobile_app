import 'package:flutter/material.dart';
import 'package:myapp/screens/login_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _controller = TextEditingController();

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
                controller: _controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                    hintText: 'Enter valid name'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                    hintText: 'Enter valid name'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter valid name'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _controller,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                    hintText: 'Enter valid address'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
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

