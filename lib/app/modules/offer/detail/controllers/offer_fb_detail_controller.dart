import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/modules/offer/list/controllers/offer_fb_list_controller.dart';
import 'package:app_lazam/app/modules/offer/list/model/offer_model.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OfferFbDetailController extends GetxController {
  OffersModel offersModel;

  @override
  void onInit() {
    offersModel = Get.arguments[0];
    super.onInit();
  }

  void editOffer() async {
    ResponsModel responsModel =
        await WebServices().editOffersDetaile(offersModel: offersModel);
    if (responsModel.success) {
      Response response = responsModel.data;
      if (response.body['IsSuccess']) {
        Get.snackbar(
          AppName,
          'تم التعديل بنجاح',
          snackbarStatus: (SnackbarStatus status) {
            if (status == SnackbarStatus.CLOSED) {
         
              Get.offAndToNamed(Routes.LAYOUT_FOOD_PROVIDER);
            }
          },
        );
      } else {
        Get.snackbar(AppName, 'خطاء فى التعديل');
      }
    }
  }

  @override
  void onClose() {
  }
  
}
