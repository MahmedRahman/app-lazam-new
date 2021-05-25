import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/modules/offer/list/model/offer_model.dart';
import 'package:get/get.dart';

class OfferFbListController extends GetxController {
  //TODO: Implement OfferFbListController

  var ListCount = 0.obs;
  @override
  void onInit() {
    getOffers();
    super.onInit();
  }

  var listOffer = Future.value().obs;

  getOffers() async {
    ResponsModel responsModel = await WebServices().getOffers();

    if (responsModel.success) {
      Response response = responsModel.data;
      final offersModel = offersModelFromJson(response.bodyString);
      ListCount.value = offersModel.length;
      listOffer.value = Future.value(offersModel);
    }
  }
}
