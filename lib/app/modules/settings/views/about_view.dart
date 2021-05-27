import 'package:app_lazam/app/data/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

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
          child: Html(
        data: KAboutPage,
      )),
    );
  }
}
