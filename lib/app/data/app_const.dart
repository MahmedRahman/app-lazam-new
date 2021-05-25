import 'package:app_lazam/app/shared/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const AppName = 'Lazam';
var selectScreen = 1.obs;
const KprimaryColor = Color(0xff5EAF6B);
const KsecondaryColor = Color(0xffF6F6F6);

UserModel userModel;

enum UserType {
  select,
  FoodProvider,
  Host,
}

enum OfferStatus { Request, Accept, Reject, Delete }

enum ShowStatus { Show, Hide }

List<dynamic> userCity;
