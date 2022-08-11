import 'package:flutter/material.dart';
import 'package:myapp/model/client_data_model.dart';
import 'package:myapp/services/client_history_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        title: const Text('Client History'),
      ),
      body: _clientDataModel.isEmpty
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
                              Text("First Name : " + _clientDataModel[index].firstname),
                              Text("Last Name : " + _clientDataModel[index].lastname),
                              Text("Phone Number : " + _clientDataModel[index].phonenumber),
                              Text("Email : " + _clientDataModel[index].email),
                              Text("Region : " + _clientDataModel[index].region),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
