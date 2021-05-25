import 'package:get/get.dart';
import 'package:app_lazam/app/modules/request/list/model/request_model.dart';

class RequestDetailController extends GetxController {
  //TODO: Implement RequestDetailController

  RequestModel requestItem;

  @override
  void onInit() {
    requestItem = Get.arguments[0];
    super.onInit();
  }

  @override
  void onClose() {}
}
