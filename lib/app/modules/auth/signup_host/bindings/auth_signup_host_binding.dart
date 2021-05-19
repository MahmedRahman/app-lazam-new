import 'package:get/get.dart';

import '../controllers/auth_signup_host_controller.dart';

class AuthSignupHostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthSignupHostController>(
      () => AuthSignupHostController(),
    );
  }
}
