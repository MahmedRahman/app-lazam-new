import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_host_order_controller.dart';

class OfferHostOrderView extends GetView<OfferHostOrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OfferHostOrderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OfferHostOrderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
