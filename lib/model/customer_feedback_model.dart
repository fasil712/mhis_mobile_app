// To parse this JSON data, do
//
//     final feedbackModel = feedbackModelFromJson(jsonString);

import 'dart:convert';

FeedbackModel feedbackModelFromJson(String str) => FeedbackModel.fromJson(json.decode(str));

String feedbackModelToJson(FeedbackModel data) => json.encode(data.toJson());

class FeedbackModel {
    FeedbackModel({
        required this.fullname,
        required this.email,
        required this.phone,
        required this.message,
    });

    String fullname;
    String email;
    String phone;
    String message;

    factory FeedbackModel.fromJson(Map<String, dynamic> json) => FeedbackModel(
        fullname: json["fullname"],
        email: json["email"],
        phone: json["phone"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "fullname": fullname,
        "email": email,
        "phone": phone,
        "message": message,
    };
}
