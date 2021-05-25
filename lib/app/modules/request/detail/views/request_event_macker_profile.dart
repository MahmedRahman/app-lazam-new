import 'package:app_lazam/app/modules/request/detail/controllers/request_detail_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ProfileEvantMackerView extends GetView<RequestDetailController> {
  RequestDetailController controller = Get.put(RequestDetailController());
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.windowClose,
                  ),
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
              initialValue: controller.requestItem.eventMakerName,
              decoration: InputDecoration(
                labelText: 'الاسم',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.lock),
              ),
              readOnly: true,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue:controller.requestItem.eventMakerEmail,
              decoration: InputDecoration(
                labelText: 'البريد الإلكتروني',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.lock),
              ),
              readOnly: true,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: controller.requestItem.eventMakerPhone,
              decoration: InputDecoration(
                labelText: 'رقم الاتصال',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.lock),
              ),
              readOnly: true,
            ),
          ],
        ),
      ),
    );
  }
}
