import 'package:get/get.dart';

import '../controllers/contactgroup_list_controller.dart';

class ContactgroupListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactgroupListController>(
      () => ContactgroupListController(),
    );
  }
}
