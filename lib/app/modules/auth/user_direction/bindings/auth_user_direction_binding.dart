import 'package:get/get.dart';

import '../controllers/auth_user_direction_controller.dart';

class AuthUserDirectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthUserDirectionController>(
      () => AuthUserDirectionController(),
    );
  }
}
