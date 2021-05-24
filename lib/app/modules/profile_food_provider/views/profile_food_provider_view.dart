import 'dart:ui';

import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/data/component.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/profile_food_provider_controller.dart';

class ProfileFoodProviderView extends GetView<ProfileFoodProviderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              defaultImagePicker(
                backgroundImage: AssetImage('images/avater.png'),
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                readOnly: true,
                initialValue: 'atp',
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'أسم المستخدم',
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                initialValue: 'محمد عبد الرحمن',
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'الاسم'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                initialValue: '01002089079',
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'رقم الاتصال'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                initialValue: 'atp2020@outlook.com',
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ألبريد الالكترونى'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                initialValue: 'الرياض',
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'المدينة'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                initialValue: 'مطعم البيك للوجبات السريعة',
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'الوصف'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('تعديل الملف الشخصى'),
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

class CustomTextEdit extends StatelessWidget {
  CustomTextEdit({
    @required this.title,
    @required this.textHint,
  });

  String title;
  String textHint;
  var isEdit = false.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Card(
        child: ListTile(
          leading: Text(
            title,
            style: TextStyle(
              color: KprimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          title: TextFormField(
            readOnly: isEdit.value,
            decoration: InputDecoration(
              hintText: textHint,
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              isEdit.value ? FontAwesomeIcons.edit : FontAwesomeIcons.pen,
            ),
            onPressed: () {
              isEdit.value = !isEdit.value;
            },
          ),
        ),
      );
    });
  }
}
