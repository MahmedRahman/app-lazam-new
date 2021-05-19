import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/layout_host_controller.dart';

class LayoutHostView extends GetView<LayoutHostController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutHostView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LayoutHostView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
