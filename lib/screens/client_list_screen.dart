import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors.dart';
import 'package:pregmomcare/model/client_data_model.dart';
import 'package:pregmomcare/screens/login_screen.dart';
import 'package:pregmomcare/screens/register_screen.dart';
import 'package:pregmomcare/services/client_list_service.dart';

class ClientHistory extends StatefulWidget {
  const ClientHistory({Key? key}) : super(key: key);

  @override
  _ClientHistoryState createState() => _ClientHistoryState();
}

class _ClientHistoryState extends State<ClientHistory> {
  List<ClientDataModel> _clientDataModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _clientDataModel = await ApiService.getUsers();
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          backgroundColor: AppColors.appbarBgColor,
          title: const Text('Client List'),
          actions: const [
            Text("Gelila"),
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/avatar.jpg"),
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
                margin: const EdgeInsets.only(left: 17.0),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      child: const Text("Add Client"),
                      onPressed: () {
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
                      child: const Text("Update Client"),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    ElevatedButton(
                      // style: ButtonStyle(backgroundColor: Color(Colors.red)),
                      child: const Text("Logout"),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          hintText: 'Search',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                          prefixIcon: Container(
                            padding: EdgeInsets.all(15),
                            child: Icon(Icons.search),
                            width: 18,
                          )),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(Icons.filter),
                      width: 25),
                ],
              ),
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
                          return SizedBox(
                            child: Column(
                              children: [
                                ListTile(
                                    leading: const Icon(Icons.person),
                                    title: Text(
                                        _clientDataModel[index].firstname +
                                            ' ' +
                                            _clientDataModel[index].lastname),
                                    subtitle: Text(_clientDataModel[index].mrn),
                                    trailing: const Icon(Icons.more_vert),
                                    onTap: () {
                                      /* react to the tile being tapped */
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
}
