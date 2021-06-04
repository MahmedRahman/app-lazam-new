import 'package:get/get.dart';

import '../controllers/offer_host_list_controller.dart';

class OfferHostListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferHostListController>(
      () => OfferHostListController(),
    );
  }
}
