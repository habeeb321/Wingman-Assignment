// To parse this JSON data, do
//
//     final mobileModel = mobileModelFromJson(jsonString);

import 'dart:convert';

MobileModel mobileModelFromJson(String str) =>
    MobileModel.fromJson(json.decode(str));

String mobileModelToJson(MobileModel data) => json.encode(data.toJson());

class MobileModel {
  MobileModel({
    required this.status,
    required this.response,
    required this.requestId,
  });

  bool status;
  String response;
  String requestId;

  factory MobileModel.fromJson(Map<String, dynamic> json) => MobileModel(
        status: json["status"],
        response: json["response"],
        requestId: json["request_id"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "response": response,
        "request_id": requestId,
      };
}
