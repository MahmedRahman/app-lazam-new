import 'package:get/get.dart';

import '../controllers/auth_signup_food_provider_controller.dart';

class AuthSignupFoodProviderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthSignupFoodProviderController>(
      () => AuthSignupFoodProviderController(),
    );
  }
}
