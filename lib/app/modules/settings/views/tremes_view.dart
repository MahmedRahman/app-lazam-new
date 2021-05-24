import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TremesView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('شروط و احكام'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TremesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
