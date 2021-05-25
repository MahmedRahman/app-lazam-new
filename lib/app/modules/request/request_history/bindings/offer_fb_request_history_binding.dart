import 'package:get/get.dart';

import '../controllers/offer_fb_request_history_controller.dart';

class OfferFbRequestHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferFbRequestHistoryController>(
      () => OfferFbRequestHistoryController(),
    );
  }
}
