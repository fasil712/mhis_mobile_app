import 'package:flutter/material.dart';
import 'package:myapp/model/danger_sign_model.dart';
import 'package:myapp/screens/preg_danger_sign/danger_sign_detail_screen.dart';
import 'package:myapp/services/danger_sign_services.dart';

class PregDangerSign extends StatelessWidget {
  const PregDangerSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE3E2DC),
        appBar: AppBar(
          title: const Text("Pregnancy Danger Signs"),
        ),
        body: FutureBuilder(
          future: ReadJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var items = data.data as List<DangerSignModel>;
              return ListView.builder(
                  // ignore: unnecessary_null_comparison
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    DangerSignDetail(item: item))),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  items[index].name.toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                SizedBox(
                                  width: 400,
                                  height: 200,
                                  child: Image(
                                    image: AssetImage(
                                        items[index].image.toString()),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Text(items[index].description.toString()),
                              ],
                            ),
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
