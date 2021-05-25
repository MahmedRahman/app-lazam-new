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
        this.image,
        this.imageFile,
        this.imageBytes,
        this.price,
        this.description,
        this.userId,
        this.userName,
        this.status,
        this.showStatus,
        this.addDate,
    });

    int id;
    String name;
    dynamic image;
    dynamic imageFile;
    dynamic imageBytes;
    double price;
    String description;
    String userId;
    String userName;
    int status;
    int showStatus;
    DateTime addDate;

    factory OffersModel.fromJson(Map<String, dynamic> json) => OffersModel(
        id: json["Id"],
        name: json["Name"],
        image: json["Image"],
        imageFile: json["ImageFile"],
        imageBytes: json["ImageBytes"],
        price: json["Price"],
        description: json["Description"],
        userId: json["UserId"],
        userName: json["UserName"],
        status: json["Status"],
        showStatus: json["ShowStatus"],
        addDate: DateTime.parse(json["AddDate"]),
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "Name": name,
        "Image": image,
        "ImageFile": imageFile,
        "ImageBytes": imageBytes,
        "Price": price,
        "Description": description,
        "UserId": userId,
        "UserName": userName,
        "Status": status,
        "ShowStatus": showStatus,
        "AddDate": addDate.toIso8601String(),
    };
}
