import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/modules/request/list/model/request_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RequestListController extends GetxController {
  //TODO: Implement RequestListController

  @override
  void onInit() {
    getRequest();
    super.onInit();
  }

  var listRequestModel = Future.value().obs;

  void getRequest() async {
    ResponsModel responsModel = await WebServices().getRequest();
    if (responsModel.success) {
      Response response = responsModel.data;
      final requestModel = requestModelFromJson(response.bodyString);
      listRequestModel.value = Future.value(requestModel);
    }
  }

  @override
  void onClose() {}
}
