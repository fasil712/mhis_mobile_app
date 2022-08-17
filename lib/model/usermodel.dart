// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.user,
  });

  User user;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
      };
}

class User {
  User({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.city,
    required this.age,
    required this.sex,
    required this.email,
    required this.phoneNo,
    required this.password,
    required this.department,
    required this.specialization,
    required this.role,
    required this.ward,
    required this.wardCode,
    required this.createdAt,
    required this.updatedAt,
  });

  String userId;
  String firstName;
  String lastName;
  String userName;
  String city;
  int age;
  String sex;
  String email;
  String phoneNo;
  String password;
  String department;
  String specialization;
  String role;
  dynamic ward;
  dynamic wardCode;
  DateTime createdAt;
  DateTime updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        userName: json["user_name"],
        city: json["City"],
        age: json["Age"],
        sex: json["Sex"],
        email: json["Email"],
        phoneNo: json["Phone_no"],
        password: json["password"],
        department: json["department"],
        specialization: json["specialization"],
        role: json["role"],
        ward: json["ward"],
        wardCode: json["wardCode"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "first_name": firstName,
        "last_name": lastName,
        "user_name": userName,
        "City": city,
        "Age": age,
        "Sex": sex,
        "Email": email,
        "Phone_no": phoneNo,
        "password": password,
        "department": department,
        "specialization": specialization,
        "role": role,
        "ward": ward,
        "wardCode": wardCode,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
