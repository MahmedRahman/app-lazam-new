// To parse this JSON data, do
//
//     final offersModel = offersModelFromJson(jsonString);

import 'dart:convert';

List<OffersModel> offersModelFromJson(String str) => List<OffersModel>.from(json.decode(str).map((x) => OffersModel.fromJson(x)));

String offersModelToJson(List<OffersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OffersModel {
    OffersModel({
        this.id,
        this.name,
        this.price,
        this.description,
        this.userId,
        this.userName,
        this.status,
        this.addDate,
    });

    int id;
    String name;
    int price;
    String description;
    String userId;
    String userName;
    int status;
    DateTime addDate;

    factory OffersModel.fromJson(Map<String, dynamic> json) => OffersModel(
        id: json["Id"],
        name: json["Name"],
        price: json["Price"],
        description: json["Description"],
        userId: json["UserId"] == null ? null : json["UserId"],
        userName: json["UserName"] == null ? null : json["UserName"],
        status: json["Status"],
        addDate: DateTime.parse(json["AddDate"]),
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "Name": name,
        "Price": price,
        "Description": description,
        "UserId": userId == null ? null : userId,
        "UserName": userName == null ? null : userName,
        "Status": status,
        "AddDate": addDate.toIso8601String(),
    };
}
