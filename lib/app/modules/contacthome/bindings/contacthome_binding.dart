import 'package:get/get.dart';

import '../controllers/contacthome_controller.dart';

class ContacthomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContacthomeController>(
      () => ContacthomeController(),
    );
  }
}
