import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_food_provider_view_controller.dart';

class ProfileFoodProviderViewView
    extends GetView<ProfileFoodProviderViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileFoodProviderViewView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileFoodProviderViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
