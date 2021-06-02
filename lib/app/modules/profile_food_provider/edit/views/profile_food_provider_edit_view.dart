import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_food_provider_edit_controller.dart';

class ProfileFoodProviderEditView
    extends GetView<ProfileFoodProviderEditController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileFoodProviderEditView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileFoodProviderEditView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
