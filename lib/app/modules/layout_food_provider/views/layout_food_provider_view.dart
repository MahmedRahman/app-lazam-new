import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/layout_food_provider_controller.dart';

class LayoutFoodProviderView extends GetView<LayoutFoodProviderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutFoodProviderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LayoutFoodProviderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
