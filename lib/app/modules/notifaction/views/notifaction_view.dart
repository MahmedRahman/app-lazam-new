import 'package:app_lazam/app/modules/notifaction/model/notifaction_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/notifaction_controller.dart';

class NotifactionView extends GetView<NotifactionController> {
  NotifactionController controller = Get.put(NotifactionController());

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
              Obx(() {
                return FutureBuilder(
                    future: controller.listNotifactionModel.value,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<NotifactionModel> notifactionModel = snapshot.data;

                        if (notifactionModel.length == 0) {
                          return Center(
                            child: Text('لا يوجود أشعارات'),
                          );
                        } else {
                          return ListView(
                            shrinkWrap: true,
                            children: List.generate(
                              notifactionModel.length,
                              (index) => NotifactionItem(
                                notifactionModel:
                                    notifactionModel.elementAt(index),
                              ),
                            ),
                          );
                        }
                      }

                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    });
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget NotifactionItem({@required NotifactionModel notifactionModel}) => Card(
        child: ListTile(
          title: Text(notifactionModel.name),
          subtitle: Text(notifactionModel.body),
          leading: Icon(
            Icons.notification_important,
            size: 32,
          ),
        ),
      );
}
