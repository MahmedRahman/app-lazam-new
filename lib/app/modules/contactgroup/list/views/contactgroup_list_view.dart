import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/contactgroup_list_controller.dart';

class ContactgroupListView extends GetView<ContactgroupListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContactgroupListView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ContactgroupListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
