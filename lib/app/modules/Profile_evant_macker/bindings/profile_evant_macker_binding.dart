import 'package:get/get.dart';

import '../controllers/profile_evant_macker_controller.dart';

class ProfileEvantMackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileEvantMackerController>(
      () => ProfileEvantMackerController(),
    );
  }
}
