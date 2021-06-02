import 'package:get/get.dart';

import '../controllers/profile_event_macker_view_controller.dart';

class ProfileEventMackerViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileEventMackerViewController>(
      () => ProfileEventMackerViewController(),
    );
  }
}
