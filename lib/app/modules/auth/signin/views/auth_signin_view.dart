import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/data/component.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../controllers/auth_signin_controller.dart';
import 'package:app_lazam/app/data/validation.dart';

class AuthSigninView extends GetView<AuthSigninController> {
  var obscureText = true.obs;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;

    if (GetUtils.isNullOrBlank(data)) {
    } else {
      controller.phoneTextController.text = data[0];
      controller.passwordTextController.text = data[1];
    }

    return Scaffold(
      backgroundColor: KsecondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Row(
                    textDirection: TextDirection.ltr,
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
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: FaIcon(
                        Icons.login,
                        color: KprimaryColor,
                        size: 32,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'تسجيل الدخول',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
                defaultTextFialed(
                    hintText: 'رقم الجوال',
                    suffixIcon: Icon(FontAwesomeIcons.mobileAlt),
                    keyboardType: TextInputType.number,
                    controller: controller.phoneTextController,
                    validator: (String v) =>
                        v.isPhoneNumber ? null : 'اكتب هنا رقم جوال'),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () {
                    return defaultTextFialed(
                        hintText: 'كلمة المرور',
                        suffixIcon: obscureText.value
                            ? Icon(FontAwesomeIcons.lock)
                            : Icon(FontAwesomeIcons.lockOpen),
                        prefixIcon: IconButton(
                          icon: obscureText.value
                              ? Icon(Icons.visibility_off_outlined)
                              : Icon(Icons.visibility_outlined),
                          onPressed: () {
                            obscureText.value = !obscureText.value;
                          },
                        ),
                        obscureText: obscureText.value,
                        controller: controller.passwordTextController,
                        keyboardType: TextInputType.name,
                        validator: (String v) =>
                            v.isNotEmpty ? null : 'ادخال كلمة المرور');
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                defaultButton(
                  buttontext: 'تسجيل الدخول',
                  onClick: () {
                    FocusScope.of(context).unfocus();
                    if (_formKey.currentState.validate()) {
                      controller.login();
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.AUTH_FORGET_PASSWORD);
                      },
                      child: Text(
                        ' نسيت كلمة السر ؟',
                        style: TextStyle(color: KprimaryColor),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: Text('إنشـاء حسـاب'),
                      onTap: () {
                        Get.toNamed(Routes.AUTH_SIGNUP_HOST);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
