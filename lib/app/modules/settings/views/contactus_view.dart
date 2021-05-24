import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ContactusView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('اتصل بنا'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ContactusView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
