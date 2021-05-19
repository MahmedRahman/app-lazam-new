// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    UserModel({
        this.id,
        this.name,
        this.description,
        this.status,
        this.address,
        this.email,
        this.userName,
        this.phoneNumber,
        this.password,
        this.confirmPassword,
        this.deviceId,
        this.logo,
        this.logoFile,
        this.categoryId,
        this.typeId,
        this.events,
        this.offers,
        this.logoBytes,
        this.role,
    });

    String id;
    String name;
    String description;
    int status;
    String address;
    String email;
    String userName;
    String phoneNumber;
    dynamic password;
    dynamic confirmPassword;
    dynamic deviceId;
    String logo;
    dynamic logoFile;
    int categoryId;
    int typeId;
    dynamic events;
    dynamic offers;
    dynamic logoBytes;
    int role;

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["Id"],
        name: json["Name"],
        description: json["Description"],
        status: json["Status"],
        address: json["Address"],
        email: json["Email"],
        userName: json["UserName"],
        phoneNumber: json["PhoneNumber"],
        password: json["Password"],
        confirmPassword: json["ConfirmPassword"],
        deviceId: json["DeviceId"],
        logo: json["Logo"],
        logoFile: json["LogoFile"],
        categoryId: json["CategoryId"],
        typeId: json["TypeId"],
        events: json["Events"],
        offers: json["Offers"],
        logoBytes: json["LogoBytes"],
        role: json["Role"],
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "Name": name,
        "Description": description,
        "Status": status,
        "Address": address,
        "Email": email,
        "UserName": userName,
        "PhoneNumber": phoneNumber,
        "Password": password,
        "ConfirmPassword": confirmPassword,
        "DeviceId": deviceId,
        "Logo": logo,
        "LogoFile": logoFile,
        "CategoryId": categoryId,
        "TypeId": typeId,
        "Events": events,
        "Offers": offers,
        "LogoBytes": logoBytes,
        "Role": role,
    };
}
