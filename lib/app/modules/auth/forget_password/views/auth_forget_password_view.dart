import 'package:app_lazam/app/data/app_const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/auth_forget_password_controller.dart';

class AuthForgetPasswordView extends GetView<AuthForgetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Column(
        children: [
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.longArrowAltLeft),
                    SizedBox(
                      width: 5,
                    ),
                    Text('رجـوع'),
                  ],
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: FaIcon(
                    FontAwesomeIcons.key,
                    color: KprimaryColor,
                    size: 32,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'استرجاع كلمة السر',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'برجاء كتابة رقم الجوال المسجل',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
        ],
      ),
            ),
          )),
    );
  }
}
