import 'package:get/get.dart';

import '../controllers/auth_signin_controller.dart';

class AuthSigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthSigninController>(
      () => AuthSigninController(),
    );
  }
}
