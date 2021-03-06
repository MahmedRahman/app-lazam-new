import 'dart:convert';
import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/modules/offer/list/model/offer_model.dart';
import 'package:flutter/material.dart';
import 'package:app_lazam/app/api/ApiManger.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';

class WebServices extends ApiManger {
  Future<ResponsModel> signin({
    @required String phone,
    @required String password,
  }) async {
    EasyLoading.show(status: 'جارى التحميل');

    var formData =
        "UserName=${phone.toString()}&Password=${password.toString()}&grant_type=password";

    Response response = await post(
      'https://lazam.atpnet.net/Token',
      formData,
      headers: <String, String>{
        "Accept": "application/json",
        'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
      },
    );

    EasyLoading.dismiss();

    return ResponsModel(
      code: response.statusCode,
      success: response.statusCode == 200 ? true : false,
      data: response,
    );
  }

  Future<ResponsModel> getSetting() async {
    ResponsModel response = await repGet('Setting/FullGet');
    return response;
  }

  Future<ResponsModel> getProfile() async {
    ResponsModel response = await repGet('Account/GetProfile?userId=');
    return response;
  }

  Future<ResponsModel> accountRegister({
    @required String fullName,
    @required int userType,
    String description = '',
    @required String address,
    @required String email,
    @required String phoneNumber,
    @required String password,
    @required int cityId,
    String imageBytes = '',
  }) async {
    ResponsModel response = await repPost(
        'Account/Register',
        {
          "Name": fullName,
          "Description": description,
          "Role": userType,
          "Address": address,
          "Email": email,
          "UserName": phoneNumber,
          "PhoneNumber": phoneNumber,
          "Password": password,
          "ConfirmPassword": password,
          "Logo": "temp.jpg",
          "LogoBytes": imageBytes.toString(),
          "CityId": cityId,
          "Status": 0,
        },
        showLoading: true);
    return response;
  }

  Future<ResponsModel> addOffer({
    @required String name,
    @required double price,
    @required String description,
    @required String imageBytes,
  }) async {
    ResponsModel response = await repPost(
        'Offer/Add',
        {
          "Name": name,
          "Price": price,
          "Description": description,
          "ImageBytes": imageBytes
        },
        showLoading: true);
    return response;
  }

  Future<ResponsModel> getOffers() async {
    ResponsModel response = await repGet('Offer/Get', showLoading: true);
    return response;
  }

  Future<ResponsModel> editOffersDetaile({
    @required OffersModel offersModel,
  }) async {
    ResponsModel response = await repPost(
      'Offer/Edit/${offersModel.id}',
      offersModel.toJson(),
      showLoading: true,
    );
    return response;
  }

  Future<ResponsModel> getRequestsByOffer({@required String offerID}) async {
    ResponsModel response = await repGet(
        'EventOffer/GetByOffer/${offerID.toString()}',
        showLoading: false);
    return response;
  }

  Future<ResponsModel> getRequest() async {
    ResponsModel response = await repGet('EventOffer/Get', showLoading: true);
    return response;
  }

  Future<ResponsModel> getNotification() async {
    ResponsModel response =
        await repGet('Account/Notification', showLoading: true);
    return response;
  }

  Future<ResponsModel> requestAccept({@required requestid}) async {
    ResponsModel response = await repPost(
        'EventOffer/Accept/${requestid.toString()}', '',
        showLoading: true);
    return response;
  }

  Future<ResponsModel> requestReject({@required requestid}) async {
    ResponsModel response = await repPost(
        'EventOffer/Reject/${requestid.toString()}', '',
        showLoading: true);
    return response;
  }
}
