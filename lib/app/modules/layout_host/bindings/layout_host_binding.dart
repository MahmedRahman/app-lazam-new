import 'package:get/get.dart';

import '../controllers/layout_host_controller.dart';

class LayoutHostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutHostController>(
      () => LayoutHostController(),
    );
  }
}
