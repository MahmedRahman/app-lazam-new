import 'package:app_lazam/app/shared/user_model.dart';
import 'package:flutter/material.dart';

const AppName = 'Lazam';
const KprimaryColor = Color(0xff5EAF6B);
const KsecondaryColor = Color(0xffF4F4F4);

UserModel userModel;

enum UserType {
  select,
  FoodProvider,
  Host,
}

List<dynamic> userCity;
