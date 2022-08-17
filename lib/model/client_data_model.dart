import 'dart:convert';

// List<ClientDataModel> clientDataModelFromJson(String str) =>
//     List<ClientDataModel>.from(
//         json.decode(str).map((x) => ClientDataModel.fromJson(x)));

// String clientDataModelToJson(List<ClientDataModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
        userId: json["UserId"],
        facilityname: json["name_of_facility"],
        mrn: json["MRN"],
        registrationdate: json["date_reg"],
        firstname: json["first_name"],
        lastname: json["lats_name"],
        grandfathername: json["Grand_Father_name"],
        age: json["Age"],
        sex: json["Sex"],
        email: json["Email"],
        phonenumber: json["Phone_no"],
        region: json["Region"],
        woreda: json["Woreda"],
        kebele: json["Kebele"],
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
