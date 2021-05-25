import 'package:get/get.dart';

import '../controllers/offer_fb_list_controller.dart';

class OfferFbListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferFbListController>(
      () => OfferFbListController(),
    );
  }
}
