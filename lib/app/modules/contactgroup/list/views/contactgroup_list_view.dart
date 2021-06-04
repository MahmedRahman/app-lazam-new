import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/contactgroup_list_controller.dart';

class ContactgroupListView extends GetView<ContactgroupListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(Routes.CONTACTGROUP_ADD);
          },
          child: Icon(FontAwesomeIcons.plus),
        ),
        body: ListView(
            children: List.generate(
          10,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(
                      FontAwesomeIcons.carSide,
                      size: 32,
                      color: KprimaryColor,
                    ),
                    title: Text('العائلة الكريمة'),
                    subtitle: Text('عدد جهات الاتصال 20'),
                    trailing: Icon(
                      Icons.delete,
                    ), 
                  ),
                ),
              ),
            );
          },
        )));
  }
}
