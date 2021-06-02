import 'package:get/get.dart';

import '../controllers/profile_food_provider_view_controller.dart';

class ProfileFoodProviderViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileFoodProviderViewController>(
      () => ProfileFoodProviderViewController(),
    );
  }
}
