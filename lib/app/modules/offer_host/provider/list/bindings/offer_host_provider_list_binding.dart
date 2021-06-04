import 'package:get/get.dart';

import '../controllers/offer_host_provider_list_controller.dart';

class OfferHostProviderListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferHostProviderListController>(
      () => OfferHostProviderListController(),
    );
  }
}
