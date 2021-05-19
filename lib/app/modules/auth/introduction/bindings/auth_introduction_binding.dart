import 'package:get/get.dart';

import '../controllers/auth_introduction_controller.dart';

class AuthIntroductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthIntroductionController>(
      () => AuthIntroductionController(),
    );
  }
}
