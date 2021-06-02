import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_event_macker_edit_controller.dart';

class ProfileEventMackerEditView
    extends GetView<ProfileEventMackerEditController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileEventMackerEditView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileEventMackerEditView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
