import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/modules/request/detail/views/request_event_macker_profile.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/request_detail_controller.dart';

class RequestDetailView extends GetView<RequestDetailController> {
  RequestDetailController controller = Get.put(RequestDetailController());
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
                      Get.to(ProfileEvantMackerView(), fullscreenDialog: true);
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
                          'الحالة',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          OfferStatus.values[controller.requestItem.status]
                              .toString(),
                          style: TextStyle(
                            fontSize: 10,
                            color: KprimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.clip,
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
              initialValue: controller.requestItem.eventMakerName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'اسم صاحب المناسبة',
                suffixIcon: Icon(Icons.lock),
              ),
              readOnly: true,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              initialValue:controller.requestItem.eventName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'اسم المناسبة',
                suffixIcon: Icon(Icons.lock),
              ),
              readOnly: true,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              initialValue: controller.requestItem.eventCategory,
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
              initialValue: DateFormat.yMMMd().format(controller.requestItem.date).toString(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'التاريخ',
                suffixIcon: Icon(Icons.lock),
              ),
              readOnly: true,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              initialValue: controller.requestItem.itemCount.toString(),
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
