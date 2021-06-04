import 'package:get/get.dart';

import '../controllers/offer_host_provider_detail_controller.dart';

class OfferHostProviderDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferHostProviderDetailController>(
      () => OfferHostProviderDetailController(),
    );
  }
}
