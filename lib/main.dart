import 'package:flutter/material.dart';
import 'package:pregmomcare/screens/client_history.dart';
import 'package:pregmomcare/widgets/bottomnavbar.dart';
import 'package:pregmomcare/widgets/drawer.dart';
import 'package:pregmomcare/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HMIS App'),
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_rounded)),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text("Login"),
                ),
                const PopupMenuItem(
                  child: Text("Register"),
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (BuildContext context) =>
                  //           const RegisterPage()));
                  // },
                ),
              ];
            },
          ),
        ],
      ),
      drawer: const DrawerPage(),
      body: const HomePage(),
      bottomNavigationBar: const BottomeNavBar(),
    );
  }
}
