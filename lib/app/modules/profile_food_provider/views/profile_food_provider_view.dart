import 'dart:ui';

import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/data/component.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/profile_food_provider_controller.dart';

class ProfileFoodProviderView extends GetView<ProfileFoodProviderController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: defaultImagePicker(
                        backgroundImage: AssetImage('images/avater.png'),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'بيانات شخصية',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: userModel.userName,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'أسم المستخدم',
                        suffixIcon: Icon(Icons.lock),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: 'password',
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'كلمة السر',
                        suffixIcon: Icon(Icons.lock),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'بيانات البروفايل',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      initialValue: userModel.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'الاسم',
                      ),
                      keyboardType: TextInputType.text,
                      onSaved: (String v) => userModel.name = v,
                      validator: (String v) =>
                          v.isNotEmpty ? null : 'مينفعش تسيب هنا فاضى',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      initialValue: userModel.phoneNumber,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'رقم الاتصال',
                      ),
                      keyboardType: TextInputType.phone,
                      onSaved: (String v) => userModel.phoneNumber = v,
                      validator: (String v) =>
                          v.isNum ? null : 'مينفعش تسيب هنا فاضى',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      initialValue: userModel.email,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ألبريد الالكترونى',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (String v) => userModel.email = v,
                      validator: (String v) =>
                          v.isEmail ? null : 'مينفعش تسيب هنا فاضى',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: userModel.cityName,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.lock),
                        labelText: 'المدينة',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      initialValue: userModel.description,
                      maxLines: 5,
                      minLines: 1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'الوصف',
                      ),
                      keyboardType: TextInputType.text,
                      onSaved: (String v) => userModel.description = v,
                      validator: (String v) =>
                          v.isNotEmpty ? null : 'مينفعش تسيب هنا فاضى',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: Get.width,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                          }
                          ;
                        },
                        child: Text('تعديل الملف الشخصى'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
