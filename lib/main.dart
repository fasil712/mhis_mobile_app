import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pregmomcare/config/colors.dart';
import 'package:pregmomcare/screens/profile.dart';
import 'package:pregmomcare/widgets/drawer.dart';
import 'package:pregmomcare/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

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
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarBgColor,
          title: const Text('MHIS App'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Profile()));
                },
                icon: const Icon(Icons.notifications_rounded)),
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
        body: const HomePage());
  }
}
