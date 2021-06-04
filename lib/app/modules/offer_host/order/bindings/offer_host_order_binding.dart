import 'package:get/get.dart';

import '../controllers/offer_host_order_controller.dart';

class OfferHostOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferHostOrderController>(
      () => OfferHostOrderController(),
    );
  }
}
