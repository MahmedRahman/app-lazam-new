import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_host_list_controller.dart';

class OfferHostListView extends GetView<OfferHostListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OfferHostListView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OfferHostListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
