import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/modules/offer/list/controllers/offer_fb_list_controller.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OfferFbAddController extends GetxController {
  //TODO: Implement OfferFbAddController

  TextEditingController offerName = new TextEditingController();
  TextEditingController offerPrice = new TextEditingController();
  TextEditingController offerDescription = new TextEditingController();
  String imageBytes;

  @override
  void onInit() {
    super.onInit();
  }

  addOffer() async {
    ResponsModel responseModel = await WebServices().addOffer(
        name: offerName.text,
        price: double.parse(offerPrice.text),
        description: offerDescription.text,
        imageBytes: imageBytes);

    if (responseModel.success) {
      Response response = responseModel.data;
      if (response.body['IsSuccess']) {
        Get.snackbar(
          AppName,
          'تم أضافة العرض بنجاح',
          snackbarStatus: (SnackbarStatus status) {
            if (status == SnackbarStatus.CLOSED) {
              OfferFbListController Controller = Get.find();
              Controller.getOffers();
              Get.offAndToNamed(Routes.LAYOUT_FOOD_PROVIDER);
            }
          },
        );
      } else {
        Get.snackbar(AppName, 'خطاء فى أضافة العرض');
      }
    }
  }
}
