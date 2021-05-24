import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/profile_evant_macker_controller.dart';

class ProfileEvantMackerView extends GetView<ProfileEvantMackerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [

        SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'تفاصيل الملف الشخصى',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.windowClose),
                  onPressed: () {
                    Get.back();
                  },
                )
              ],
            ),
            Divider(
              thickness: 1,
            ),


            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 80,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: 'محمد عبد الرحمن',
              decoration: InputDecoration(
                  labelText: 'الاسم',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.lock)),
              readOnly: true,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: 'atp2020@outlook.com',
              decoration: InputDecoration(
                  labelText: 'البريد الإلكتروني',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.lock)),
              readOnly: true,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: '01002089079',
              decoration: InputDecoration(
                  labelText: 'رقم الاتصال',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.lock)),
              readOnly: true,
            ),
          ],
        ),
      ),
    );
  }
}
