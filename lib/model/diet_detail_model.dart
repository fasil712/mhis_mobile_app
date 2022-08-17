import 'dart:convert';

DietDetialModel dietDetialModelFromJson(String str) =>
    DietDetialModel.fromJson(json.decode(str));

String dietDetialModelToJson(DietDetialModel data) =>
    json.encode(data.toJson());

class DietDetialModel {
  DietDetialModel({
    required this.name,
    required this.description01,
    required this.description02,
    required this.description03,
    required this.picture,
  });

  String name;
  String description01;
  String description02;
  String description03;
  String picture;

  factory DietDetialModel.fromJson(Map<String, dynamic> json) =>
      DietDetialModel(
        name: json["name"],
        description01: json["description01"],
        description02: json["description02"],
        description03: json["description03"],
        picture: json["picture"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description01": description01,
        "description02": description02,
        "description03": description03,
        "picture": picture,
      };
}
