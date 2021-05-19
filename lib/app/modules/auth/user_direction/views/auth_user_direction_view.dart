import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/data/component.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/auth_user_direction_controller.dart';

class AuthUserDirectionView extends GetView<AuthUserDirectionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KsecondaryColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SvgPicture.asset('images/LOGO.svg'),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('إنشـاء حسـاب جـديد'),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: defaultButton(
                                buttontext: 'صاحب مناسبة',
                                onClick: () {
                                  Get.toNamed(Routes.AUTH_SIGNUP_HOST);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: defaultButton(
                                buttontext: 'مقدم خدمة',
                                onClick: () {
                                     Get.toNamed(Routes.AUTH_SIGNUP_FOOD_PROVIDER);
                                },
                                buttonColor: KsecondaryColor,
                                textColor: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('هـل لـديك حسـاب بالفعـل'),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: defaultButton(
                            buttontext: 'تسجيل الدخول',
                            onClick: () {
                              Get.toNamed(Routes.AUTH_SIGNIN);
                            },
                               buttonColor: KsecondaryColor,
                                textColor: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
