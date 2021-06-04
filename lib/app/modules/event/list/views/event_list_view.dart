import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/event_list_controller.dart';

class EventListView extends GetView<EventListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.EVENT_ADD);
        },
        child: Icon(
          FontAwesomeIcons.plus,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('التصنيف'),
                              SizedBox(
                                width: 10,
                              ),
                              Text('أعياد الميلاد'),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('اسم المناسبة'),
                              SizedBox(
                                width: 10,
                              ),
                              Text('عيد ميلاد'),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('التاريخ'),
                              SizedBox(
                                width: 10,
                              ),
                              Text('13/10/2021'),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text('في انتظار الموافقة'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
