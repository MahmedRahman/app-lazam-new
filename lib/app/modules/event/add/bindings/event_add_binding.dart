import 'package:get/get.dart';

import '../controllers/event_add_controller.dart';

class EventAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventAddController>(
      () => EventAddController(),
    );
  }
}
