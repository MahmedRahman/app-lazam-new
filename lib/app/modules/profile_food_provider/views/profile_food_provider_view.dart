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
      appBar: AppBar(
        title: Text('ProfileFoodProviderView'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
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
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ),
              child: CustomTextEdit(
                title: 'الاسم',
                textHint: userModel.email.toString(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Text('البريد الالكترونى'),
              title: Text('${userModel.email.toString()}'),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Text('رقم الاتصال'),
              title: Text('${userModel.phoneNumber.toString()}'),
            ),
            ListTile(
              leading: Text('العنوان'),
              title: Text('${userModel.address.toString()}'),
            ),
            ListTile(
              leading: Text('المدينة'),
              title: Text('${userModel.name.toString()}'),
            ),
            ListTile(
              leading: Text('الوصف'),
              title: Text('${userModel.description.toString()}'),
            ),
          ],
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
