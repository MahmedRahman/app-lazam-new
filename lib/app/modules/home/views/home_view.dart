import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/data/component.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
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
            ListTile(
              title: Text('الاسم'),
              subtitle: Text('${userModel.name.toString()}'),
            ),
            ListTile(
              title: Text('البريد الالكترونى'),
              subtitle: Text('${userModel.email.toString()}'),
            ),
            ListTile(
              title: Text('رقم الاتصال'),
              subtitle: Text('${userModel.phoneNumber.toString()}'),
            ),
            ListTile(
              title: Text('العنوان'),
              subtitle: Text('${userModel.address.toString()}'),
            ),
            ListTile(
              title: Text('المدينة'),
              subtitle: Text('${userModel.name.toString()}'),
            ),
            ListTile(
              title: Text('الوصف'),
              subtitle: Text('${userModel.description.toString()}'),
            ),
          ],
        ),
      ),
    );
  }
}
