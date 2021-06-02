import 'package:get/get.dart';

import '../controllers/contactgroup_add_controller.dart';

class ContactgroupAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactgroupAddController>(
      () => ContactgroupAddController(),
    );
  }
}
