import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AboutView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('عن المشروع'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AboutView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
