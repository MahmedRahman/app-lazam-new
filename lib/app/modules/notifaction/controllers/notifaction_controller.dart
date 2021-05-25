import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/modules/notifaction/model/notifaction_model.dart';
import 'package:get/get.dart';

class NotifactionController extends GetxController {
  //TODO: Implement NotifactionController

  @override
  void onInit() {
    getNotification();
    super.onInit();
  }

  var listNotifactionModel = Future.value().obs;

  getNotification() async {
    ResponsModel responsModel = await WebServices().getNotification();
    if (responsModel.success) {
      Response response = responsModel.data;
      final notifactionModel = notifactionModelFromJson(response.bodyString);
      listNotifactionModel.value = Future.value(notifactionModel);
    }
  }

  @override
  void onClose() {}
}
