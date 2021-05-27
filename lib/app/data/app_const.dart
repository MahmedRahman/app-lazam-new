import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/shared/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const AppName = 'Lazam';

const baes_url = 'https://lazam.atpnet.net/';
var selectScreen = 1.obs;
const KprimaryColor = Color(0xff5EAF6B);
const KsecondaryColor = Color(0xffF6F6F6);
String KAboutPage = '';
String KContactPage = '';
String KPrivacyPage = '';
String KtremesPage = '';

UserModel userModel;

enum Role {
  FoodProvider,
  Host,
}

Future getProfile() async {
  ResponsModel responsModel = await WebServices().getProfile();
  if (responsModel.success) {
    Response response = responsModel.data;
    userModel = userModelFromJson(response.bodyString);
    return userModel;
  } else {
    return Future.error('');
  }
}

enum OfferStatus { Request, Accept, Reject, Delete }

enum ShowStatus { Show, Hide }

enum UserStatus { Request, Active, Inactive, Delete }

List<dynamic> userCity;
