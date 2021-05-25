import 'package:get/get.dart';

import '../controllers/offer_fb_detail_controller.dart';

class OfferFbDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferFbDetailController>(
      () => OfferFbDetailController(),
    );
  }
}
