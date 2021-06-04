import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_host_provider_detail_controller.dart';

class OfferHostProviderDetailView
    extends GetView<OfferHostProviderDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OfferHostProviderDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OfferHostProviderDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
