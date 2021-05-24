import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/notifaction_controller.dart';

class NotifactionView extends GetView<NotifactionController> {
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
                    'الاشعارات',
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
              Card(
                child: ListTile(
                  title: Text('عنوان'),
                  subtitle: Text('يستبدل في نفس المساحة'),
                  leading: Icon(
                    Icons.notification_important,
                    size: 32,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('عنوان'),
                  subtitle: Text('يستبدل في نفس المساحة'),
                  leading: Icon(
                    Icons.notification_important,
                    size: 32,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
