import 'package:get/get.dart';

import '../controllers/contact_add_controller.dart';

class ContactAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactAddController>(
      () => ContactAddController(),
    );
  }
}
