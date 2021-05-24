import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PrivacyView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                elevation: 0,
        backgroundColor: Colors.white,
        title: Text('سياسية الخصوصية'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PrivacyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
