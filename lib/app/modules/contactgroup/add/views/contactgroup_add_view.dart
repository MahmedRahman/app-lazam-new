import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/contactgroup_add_controller.dart';

class ContactgroupAddView extends GetView<ContactgroupAddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContactgroupAddView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ContactgroupAddView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
