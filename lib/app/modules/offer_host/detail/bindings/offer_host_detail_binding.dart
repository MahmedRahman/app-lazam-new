import 'package:get/get.dart';

import '../controllers/offer_host_detail_controller.dart';

class OfferHostDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferHostDetailController>(
      () => OfferHostDetailController(),
    );
  }
}
