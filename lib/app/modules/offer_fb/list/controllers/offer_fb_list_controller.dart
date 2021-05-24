import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/modules/offer_fb/list/model/offer_model.dart';
import 'package:get/get.dart';

class OfferFbListController extends GetxController {
  //TODO: Implement OfferFbListController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  var listOffer = Future.value().obs;

  getOffers() async {
    ResponsModel responsModel = await WebServices().getOffers();

    if (responsModel.success) {
      Response response = responsModel.data;
      final offersModel = offersModelFromJson(response.bodyString);
      listOffer.value = Future.value(offersModel);
    }
  }
}
