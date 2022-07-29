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
          controller: ScrollController(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:  [
              const ItemCarousel(),
              const SizedBox(
                height: 20.0,
              ),
              const Text("Care for Mothers", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              const SizedBox(height: 10.0,),
              Container(
                padding: const EdgeInsets.all(10),
                height: 200,
                width: 400,
                child: Column(
                  children: const [
                    Card(
                      elevation: 5,
                      child: Text('Title'))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
