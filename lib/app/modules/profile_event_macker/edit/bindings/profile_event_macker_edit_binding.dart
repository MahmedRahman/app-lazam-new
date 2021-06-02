import 'package:get/get.dart';

import '../controllers/profile_event_macker_edit_controller.dart';

class ProfileEventMackerEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileEventMackerEditController>(
      () => ProfileEventMackerEditController(),
    );
  }
}
