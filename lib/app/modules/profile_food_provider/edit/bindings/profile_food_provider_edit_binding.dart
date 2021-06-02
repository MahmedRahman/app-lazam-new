import 'package:get/get.dart';

import '../controllers/profile_food_provider_edit_controller.dart';

class ProfileFoodProviderEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileFoodProviderEditController>(
      () => ProfileFoodProviderEditController(),
    );
  }
}
