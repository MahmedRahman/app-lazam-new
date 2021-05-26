import 'dart:io';

import 'package:app_lazam/app/data/ImagePicker.dart';
import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/data/component.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/auth_signup_host_controller.dart';

import 'package:app_lazam/app/data/validation.dart';

class AuthSignupHostView extends GetView<AuthSignupHostController> {
  var imagepath = ''.obs;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KsecondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
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
                    height: 25,
                  ),
                  Obx(() {
                    return defaultImagePicker(
                        backgroundImage: imagepath.value.isEmpty
                            ? AssetImage('images/avater.png')
                            : FileImage(File(imagepath.value)),
                        onPressed: () {
                          PickYouImage pickYouImage = new PickYouImage();
                          pickYouImage
                              .getImage(source: ImageSource.gallery)
                              .then(
                            (value) {
                              if (GetUtils.isNullOrBlank(value)) {
                              } else {
                                imagepath.value = pickYouImage.selectImagePath;
                                controller.imageBytes = value;
                              }

                              // onclick(value);
                            },
                          );
                        });
                  }),
                  SizedBox(
                    height: 40,
                  ),
                  defaultTextFialed(
                      hintText: 'اكتب الاسم',
                      controller: controller.nameTextController,
                      suffixIcon: Icon(FontAwesomeIcons.user),
                      validator: (String v) =>
                          v.isNotEmpty ? null : 'مينفعش تسيب هنا فاضى'),
                  SizedBox(
                    height: 15,
                  ),
                  defaultTextFialed(
                      hintText: 'اكتب أيميلك',
                      controller: controller.emailTextController,
                      suffixIcon: Icon(Icons.email),
                      keyboardType: TextInputType.emailAddress,
                      validator: (String v) =>
                          v.isValidEmail ? null : 'رجاء ادخل بريد الالكترونى'),
                  SizedBox(
                    height: 15,
                  ),
                  defaultTextFialed(
                      hintText: 'رقم الهاتف',
                      controller: controller.phoneTextController,
                      suffixIcon: Icon(FontAwesomeIcons.mobileAlt),
                      keyboardType: TextInputType.phone,
                      validator: (String v) =>
                          v.isValidPhone ? null : 'اكتب رقم هاتف صحيح'),
                  SizedBox(
                    height: 15,
                  ),
                  defaultDropdown(
                    onChanged: (index) {
                      controller.cityid = index;
                    },
                    validator: (int v) {
                      if (v == null) {
                        return 'برجاء اختيار المدينة المناسبة';
                      } else {
                        return null;
                      }
                    },
                    texthint: 'أختيار المدينة',
                    items: List.generate(
                      userCity.length,
                      (index) => DropdownMenuItem(
                        value: userCity.elementAt(index)['Id'],
                        child: Text('${userCity.elementAt(index)['Name']}'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  defaultTextFialed(
                      hintText: 'العنوان',
                      controller: controller.addressTextController,
                      suffixIcon: Icon(FontAwesomeIcons.map),
                      keyboardType: TextInputType.text,
                      validator: (String v) =>
                          v.isNotEmpty ? null : 'اكتب العنوان الخاص بيك'),
                  SizedBox(
                    height: 15,
                  ),
                  defaultTextFialed(
                      hintText: 'اكتب كلمة المرور',
                      controller: controller.passwordTextController,
                      suffixIcon: Icon(Icons.lock),
                      keyboardType: TextInputType.visiblePassword,
                      validator: (String v) => v.isValidPassword
                          ? null
                          : 'لازم تكون 6 حروف على الاقل'),
                  SizedBox(
                    height: 25,
                  ),
                  defaultButton(
                    buttontext: 'اشترك الأن',
                    onClick: () {
                      FocusScope.of(context).unfocus();

                      if (_formKey.currentState.validate()) {
                        print(
                            " ${controller.nameTextController.text.toString()} ${controller.emailTextController.text.toString()} ${controller.phoneTextController.text.toString()}  ${controller.passwordTextController.text.toString()} ");

                        controller.accountRegister();
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.AUTH_SIGNIN);
                        },
                        child: Text(
                          ' هل لديك حساب بالفعل ؟',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(color: KprimaryColor),
                        ),
                        onTap: () {
                          Get.toNamed(Routes.AUTH_SIGNIN);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
