import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/modules/request/list/model/request_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OfferFbRequestHistoryController extends GetxController {

  final count = 0.obs;
  @override
  void onInit() {
    getRequestsByOffer(offerID: Get.arguments[0].toString());
    super.onInit();
  }

  var listRequestHistory = Future.value().obs;

  void getRequestsByOffer({@required String offerID}) async {
    ResponsModel responsModel =
        await WebServices().getRequestsByOffer(offerID: offerID);

    if (responsModel.success) {
      Response response = responsModel.data;
      final requestHistoryModel = requestModelFromJson(response.bodyString);
      listRequestHistory.value = Future.value(requestHistoryModel);
    }
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
