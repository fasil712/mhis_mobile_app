import 'package:flutter/material.dart';
import 'package:pregmomcare/config/language_constants.dart';
import 'package:pregmomcare/config/colors_constants.dart';
import 'package:pregmomcare/model/preg_care_model.dart';
import 'package:pregmomcare/screens/pregnancey_care_detail.dart';
import 'package:pregmomcare/services/preg_care_services.dart';

class PregnanceyCare extends StatefulWidget {
  const PregnanceyCare({Key? key}) : super(key: key);

  @override
  State<PregnanceyCare> createState() => _PregnanceyCareState();
}

class _PregnanceyCareState extends State<PregnanceyCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: Text(translation(context).preg_care),
        backgroundColor: AppColors.appbarBgColor,
      ),
      body: FutureBuilder<List<PregnancyCareModel>>(
        future: ReadJsonData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            var items = snapshot.data as List<PregnancyCareModel>;
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Column(
                    children: <Widget>[
                      Card(
                        elevation: 6.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DetailPage(item: item))),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 53,
                                  child: CircleAvatar(
                                      radius: 50,
                                      backgroundImage: AssetImage(
                                          items[index].image.toString())),
                                ),
                              ),
                              Text(
                                items[index].title.toString(),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                items[index].description.toString(),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
