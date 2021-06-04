import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_host_provider_list_controller.dart';

class OfferHostProviderListView
    extends GetView<OfferHostProviderListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OfferHostProviderListView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OfferHostProviderListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
