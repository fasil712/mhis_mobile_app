import 'package:flutter/material.dart';
import 'package:myapp/model/diet_detail_model.dart';
import 'package:myapp/screens/diet_during_pregnancy/diet_detail_screen.dart';
import 'package:myapp/services/diet_services.dart';

class DietDuringPreg extends StatefulWidget {
  const DietDuringPreg({Key? key}) : super(key: key);

  @override
  State<DietDuringPreg> createState() => _DietDuringPregState();
}

class _DietDuringPregState extends State<DietDuringPreg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE3E2DC),
        appBar: AppBar(
          title: const Text("Diet During Pregnancy"),
        ),
        body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<DietDetialModel>;
              return ListView.builder(
                  // ignore: unnecessary_null_comparison
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              DietDretailPage(item: item))),
                      child: Card(
                        elevation: 5,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 100,
                                height: 100,
                                child: Image(
                                  image: AssetImage(
                                      items[index].picture.toString()),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      child: Text(
                                        items[index].name.toString(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      child: Text(
                                          items[index].description.toString()),
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
