import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/modules/contact/add/views/contact_add_view.dart';
import 'package:app_lazam/app/modules/contact/list/views/contact_list_view.dart';
import 'package:app_lazam/app/modules/contactgroup/add/views/contactgroup_add_view.dart';
import 'package:app_lazam/app/modules/contactgroup/list/views/contactgroup_list_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/contacthome_controller.dart';

class ContacthomeView extends GetView<ContacthomeController> {
  @override
  Widget build(BuildContext context) {
    return    
       DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: SizedBox(
              height: 60,
              child: Container(
                color: KprimaryColor,
                child: TabBar(
                  tabs: [
                    Text(
                      'جهـات الإتصـال',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'قائمة الإتصـال',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              ContactListView(),
              ContactgroupListView(),
            ],
          ),
        ),
      );
    
    
  }
}
