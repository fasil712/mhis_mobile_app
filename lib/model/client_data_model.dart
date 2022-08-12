import 'dart:convert';

List<ClientDataModel> clientDataModelFromJson(String str) =>
    List<ClientDataModel>.from(
        json.decode(str).map((x) => ClientDataModel.fromJson(x)));

String clientDataModelToJson(List<ClientDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ClientDataModel {
  ClientDataModel({
    required this.userId,
    required this.facilityname,
    required this.mrn,
    required this.registrationdate,
    required this.firstname,
    required this.lastname,
    required this.grandfathername,
    required this.age,
    required this.sex,
    required this.email,
    required this.phonenumber,
    required this.region,
    required this.woreda,
    required this.kebele,
  });
  String userId;
  String facilityname;
  String mrn;
  String registrationdate;
  String firstname;
  String lastname;
  String grandfathername;
  int age;
  String sex;
  String email;
  String phonenumber;
  String region;
  String woreda;
  String kebele;

  factory ClientDataModel.fromJson(Map<String, dynamic> json) =>
      ClientDataModel(
        userId: json["userId"],
        facilityname: json["facility_name"],
        mrn: json["mrn"],
        registrationdate: json["date_of_reg"],
        firstname: json["fname"],
        lastname: json["lname"],
        grandfathername: json["gfname"],
        age: json["age"],
        sex: json["gender"],
        email: json["email"],
        phonenumber: json["phone"],
        region: json["region"],
        woreda: json["city"],
        kebele: json["kebele"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "facility_name": facilityname,
        "mrn": mrn,
        "date_of_reg": registrationdate,
        "fname": firstname,
        "lname": lastname,
        "gfname": grandfathername,
        "age": age,
        "gender": sex,
        "email": email,
        "phone": phonenumber,
        "region": region,
        "city": woreda,
        "kebele": kebele,
      };
}
