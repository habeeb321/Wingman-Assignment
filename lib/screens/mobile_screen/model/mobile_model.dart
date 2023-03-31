// To parse this JSON data, do
//
//     final mobileModel = mobileModelFromJson(jsonString);

import 'dart:convert';

MobileModel mobileModelFromJson(String str) =>
    MobileModel.fromJson(json.decode(str));

String mobileModelToJson(MobileModel data) => json.encode(data.toJson());

class MobileModel {
  MobileModel({
    required this.mobile,
  });

  String mobile;

  factory MobileModel.fromJson(Map<String, dynamic> json) => MobileModel(
        mobile: json["mobile"],
      );

  Map<String, dynamic> toJson() => {
        "mobile": mobile,
      };
}
