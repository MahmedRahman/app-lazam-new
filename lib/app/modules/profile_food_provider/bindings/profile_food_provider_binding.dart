import 'package:get/get.dart';

import '../controllers/profile_food_provider_controller.dart';

class ProfileFoodProviderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileFoodProviderController>(
      () => ProfileFoodProviderController(),
    );
  }
}
