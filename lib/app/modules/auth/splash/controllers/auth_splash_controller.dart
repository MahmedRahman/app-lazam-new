import 'package:app_lazam/app/api/auth.dart';
import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:app_lazam/app/shared/user_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AuthSplashController extends GetxController {
  //TODO: Implement AuthSplashController

  @override
  void onInit() {
    super.onInit();
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

    //userModel = userModelFromJson(jsonString);
  }

  @override
  void onReady() async {
    super.onReady();

    ResponsModel settingModel = await WebServices().getSetting();
    if (settingModel.success) {

      Response response = settingModel.data;
      
      userCity = response.body['Cities'];
      KAboutPage = response.body['Setting']['About'];
      KContactPage = response.body['Setting']['ContactUs'];
      KPrivacyPage = response.body['Setting']['Privacy'];
      KtremesPage = response.body['Setting']['Terms'];

    }

    String userTokan = Get.find<UserAuth>().getUserToken();

    if (GetUtils.isNullOrBlank(userTokan)) {
      Get.offAllNamed(Routes.AUTH_INTRODUCTION);
    } else {
      getProfile().then(
        (userModel) {
          if (Role.values[userModel.role] == Role.FoodProvider) {
            Get.offAllNamed(Routes.LAYOUT_FOOD_PROVIDER);
          } else if (Role.values[userModel.role] == Role.Host) {
            Get.offAllNamed(Routes.LAYOUT_HOST);
          }
        },
        onError: (err) {
          Get.offAllNamed(Routes.AUTH_INTRODUCTION);
        },
      );
    }
  }

  @override
  void onClose() {
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }
}
