import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors_constants.dart';
import 'package:pregmomcare/model/client_data_model.dart';
import 'package:pregmomcare/model/usermodel.dart';
import 'package:pregmomcare/screens/login_screen.dart';
import 'package:pregmomcare/screens/profile.dart';
import 'package:pregmomcare/screens/register_screen.dart';
import 'package:pregmomcare/services/client_list_service.dart';
import 'package:pregmomcare/widgets/search_widget.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

class ClientList extends StatefulWidget {
  const ClientList({Key? key}) : super(key: key);

  @override
  _ClientListState createState() => _ClientListState();
}

class _ClientListState extends State<ClientList> {
  List<ClientDataModel> _clientDataModel = [];
  late SharedPreferences sharedPreferences;
  UserModel? userModel;
  String query = '';
  Timer? debouncer;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future _getData() async {
    final _clientDataModel = await ApiService.getUsers(query);
    setState(() => this._clientDataModel = _clientDataModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarBgColor,
          title: const Text('Client List'),
          actions: [
            GestureDetector(
              onTap: () async {
                sharedPreferences = await SharedPreferences.getInstance();
                var user = sharedPreferences.getString("user");
                userModel = userModelFromJson(user);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Profile(
                              userModel: userModel!,
                            )));
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage("assets/avatar.jpg"),
                  ),
                ),
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.grey, Colors.grey]),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80),
                  )),
              child: Container(
                margin: const EdgeInsets.only(left: 80),
                child: Row(
                  children: [
                    ElevatedButton(
                      child: const Text("Add Client"),
                      style:
                          ElevatedButton.styleFrom(primary: AppColors.btnColor),
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const RegisterPage()));
                      },
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      child: const Text("Logout"),
                      onPressed: () async {
                        SharedPreferences sharedPreferences =
                            await SharedPreferences.getInstance();
                        sharedPreferences.remove('user');
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext ctx) =>
                                    const LoginPage()));
                      },
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 10.0, bottom: 5.0),
              child: buildSearch(),
            ),
            Expanded(
              child: SizedBox(
                child: _clientDataModel.isEmpty
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemCount: _clientDataModel.length,
                        itemBuilder: (context, index) {
                          final listItem = _clientDataModel[index];
                          return SizedBox(
                            child: Column(
                              children: [
                                ListTile(
                                    leading: const Icon(Icons.person),
                                    title: Text(listItem.firstname +
                                        ' ' +
                                        listItem.lastname),
                                    subtitle: Text(listItem.phonenumber),
                                    trailing: Text(
                                      listItem.mrn,
                                      style: const TextStyle(
                                          color: Colors.red,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onLongPress: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Wrap(
                                              children: [
                                                ListTile(
                                                  leading: const Icon(
                                                    Icons.update,
                                                    color: Color.fromARGB(
                                                        255, 30, 132, 214),
                                                  ),
                                                  title: const Text('Update'),
                                                  trailing: Text(listItem.mrn),
                                                  onTap: () {},
                                                ),
                                                const Divider(
                                                  height: 2.0,
                                                ),
                                                ListTile(
                                                  leading: const Icon(
                                                    Icons.delete,
                                                    color: Color.fromARGB(
                                                        255, 181, 51, 42),
                                                  ),
                                                  title: const Text('Delete'),
                                                  trailing: Text(listItem.mrn),
                                                  onTap: () {},
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Dialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0)), //this right here
                                              child: SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height -
                                                    150,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      15.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Usser ID : " +
                                                          listItem.userId),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("Facility Name : " +
                                                          listItem
                                                              .facilityname),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("MRN : " +
                                                          listItem.mrn),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("Registration Date : " +
                                                          listItem
                                                              .registrationdate),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("First Name : " +
                                                          listItem.firstname),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("Last Name : " +
                                                          listItem.lastname),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("Grand Father Name : " +
                                                          listItem
                                                              .grandfathername),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("Age : " +
                                                          listItem.age
                                                              .toString()),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("Sex : " +
                                                          listItem.sex),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("Email : " +
                                                          listItem.email),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("Phone Number : " +
                                                          listItem.phonenumber),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("Region : " +
                                                          listItem.region),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("Woreda : " +
                                                          listItem.woreda),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("Kebele : " +
                                                          listItem.kebele),
                                                      const Divider(
                                                        height: 10.0,
                                                      ),
                                                      const SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: const Text(
                                                            'Ok',
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontSize: 18.0),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          });
                                    }),
                                const Divider(
                                  height: 2.0,
                                )
                              ],
                            ),
                          );
                        },
                      ),
              ),
            ),
          ],
        ));
  }

  void debounce(
    VoidCallback callback, {
    Duration duration = const Duration(milliseconds: 1000),
  }) {
    if (debouncer != null) {
      debouncer!.cancel();
    }
    debouncer = Timer(duration, callback);
  }

  Widget buildSearch() => SearchWidget(
      text: query, onChanged: searchClieant, hintText: "Search client..");

  buildClient(ClientDataModel _clientDataModel) => ListTile(
        leading: const Icon(Icons.person),
        title:
            Text(_clientDataModel.firstname + ' ' + _clientDataModel.lastname),
        subtitle: Text(_clientDataModel.mrn),
        trailing: const Icon(Icons.more_vert),
      );

  Future searchClieant(String query) async => debounce(() async {
        final _clientDataModel = await ApiService.getUsers(query);
        if (!mounted) return;
        setState(() {
          this.query = query;
          this._clientDataModel = _clientDataModel;
        });
      });
}
