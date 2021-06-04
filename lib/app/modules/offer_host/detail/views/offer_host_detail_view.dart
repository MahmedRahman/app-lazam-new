import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_host_detail_controller.dart';

class OfferHostDetailView extends GetView<OfferHostDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OfferHostDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OfferHostDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
