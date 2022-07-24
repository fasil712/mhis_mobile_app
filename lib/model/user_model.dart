
import 'dart:convert';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
        
class UserModel {
  UserModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.username,
    required this.password,
    required this.address,
  });
  int id;
  String firstname;
  String lastname;
  String email;
  String username;
  String password;
  String address;
  
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id : json['id'],
    firstname : json['firstname'],
    lastname : json['lastname'],
    email : json['email'],
    username : json['username'],
    password : json['password'],
    address : json['address']
  );

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['firstname'] = firstname;
    _data['lastname'] = lastname;
    _data['email'] = email;
    _data['username'] = username;
    _data['password'] = password;
    _data['address'] = address;
    return _data;
  }
}