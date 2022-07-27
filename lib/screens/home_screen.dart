import 'package:flutter/material.dart';
import 'package:myapp/widgets/item_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: const[
          ItemCarousel(),
          SizedBox(height: 20.0,)
        ],
      )),
    );
  }
}
