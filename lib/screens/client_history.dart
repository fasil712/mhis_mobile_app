import 'package:flutter/material.dart';
import 'package:myapp/model/client_data_model.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/register_screen.dart';
import 'package:myapp/services/client_history_service.dart';

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
        appBar: AppBar(
          title: const Text('Client List'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const RegisterPage()));
                },
                icon: const Icon(Icons.add)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginPage()));
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey,
              height: 100,
              width: 400,
              child: const Text("Add Client"),
            ),
            const SizedBox(
              height: 10.0,
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
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 8,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("First Name : " +
                                            _clientDataModel[index].firstname),
                                        Text("Last Name : " +
                                            _clientDataModel[index].lastname),
                                        Text("Phone Number : " +
                                            _clientDataModel[index]
                                                .phonenumber),
                                        Text("Email : " +
                                            _clientDataModel[index].email),
                                        Text("Region : " +
                                            _clientDataModel[index].region),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
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
