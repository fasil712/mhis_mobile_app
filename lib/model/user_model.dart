import 'dart:convert';

List<UserModel> userModelFromJson(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    required this.id,
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
  int id;
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

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        facilityname: json['facilityname'],
        mrn: json['mrn'],
        registrationdate: json['registrationdate'],
        firstname: json['firstname'],
        lastname: json['lastname'],
        grandfathername: json['grandfathername'],
        age: json['age'],
        sex: json['sex'],
        email: json['email'],
        phonenumber: json['phonenumber'],
        region: json['region'],
        woreda: json['woreda'],
        kebele: json['kebele'],
      );

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['facilityname'] = facilityname;
    _data['mrn'] = mrn;
    _data['registrationdate'] = registrationdate;
    _data['firstname'] = firstname;
    _data['lastname'] = lastname;
    _data['grandfathername'] = grandfathername;
    _data['age'] = age;
    _data['sex'] = sex;
    _data['email'] = email;
    _data['phonenumber'] = phonenumber;
    _data['region'] = region;
    _data['woreda'] = woreda;
    _data['kebele'] = kebele;
    return _data;
  }
}
