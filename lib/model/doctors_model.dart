// To parse this JSON data, do
//
//     final doctorModel = doctorModelFromJson(jsonString);

import 'dart:convert';

DoctorModel doctorModelFromJson(String str) => DoctorModel.fromJson(json.decode(str));

String doctorModelToJson(DoctorModel data) => json.encode(data.toJson());

class DoctorModel {
    DoctorModel({
        required this.name,
        required this.role,
        required this.picture,
    });

    String name;
    String role;
    String picture;

    factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        name: json["name"],
        role: json["role"],
        picture: json["picture"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "role": role,
        "picture": picture,
    };
}
