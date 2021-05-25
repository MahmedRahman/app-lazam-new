import 'package:get/get.dart';

import '../controllers/offer_fb_add_controller.dart';

class OfferFbAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferFbAddController>(
      () => OfferFbAddController(),
    );
  }
}
