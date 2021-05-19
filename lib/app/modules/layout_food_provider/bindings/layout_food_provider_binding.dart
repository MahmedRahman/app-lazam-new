import 'package:get/get.dart';

import '../controllers/layout_food_provider_controller.dart';

class LayoutFoodProviderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutFoodProviderController>(
      () => LayoutFoodProviderController(),
    );
  }
}
