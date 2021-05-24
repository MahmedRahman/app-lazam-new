import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/request_detail_controller.dart';

class RequestDetailView extends GetView<RequestDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
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
                  'تفاصيل عروض مختارة',
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
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.PROFILE_EVANT_MACKER);
                    },
                    child: Text('الملف الشخصي'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Text(
                          'الحـالة',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'اكتملت التفاصيل',
                          style: TextStyle(
                            color: KprimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: FlutterLogo(),
              width: double.infinity,
              height: 200,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              initialValue: 'محمد عبد الرحمن',
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'اسم صاحب المناسبة',
                  suffixIcon: Icon(Icons.lock)),
              readOnly: true,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              initialValue: 'عيد ميلاد',
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'اسم المناسبة',
                  suffixIcon: Icon(Icons.lock)),
              readOnly: true,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              initialValue: 'أعياد ميلاد',
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'فئة المناسبة',
                  suffixIcon: Icon(Icons.lock)),
              readOnly: true,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              initialValue: '13 Oct 2021',
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'التاريخ',
                  suffixIcon: Icon(Icons.lock)),
              readOnly: true,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              initialValue: '60',
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'عدد المدعوين',
                  suffixIcon: Icon(Icons.lock)),
              readOnly: true,
            )
          ],
        ),
      ),
    ));
  }
}
