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

    ResponsModel UserCityModel = await WebServices().getCity();
    if (UserCityModel.success) {
      Response response = UserCityModel.data;
      userCity = response.body;
    }

    String userTokan = Get.find<UserAuth>().getUserToken();

    if (GetUtils.isNullOrBlank(userTokan)) {
      //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top, SystemUiOverlay.bottom]);

      Get.toNamed(Routes.AUTH_INTRODUCTION);
    } else {
      ResponsModel responsModel = await WebServices().getProfile();

      if (responsModel.success) {
        Response response = responsModel.data;

        userModel = userModelFromJson(response.bodyString);
        Get.toNamed(Routes.AUTH_INTRODUCTION);
      } else {
        Get.toNamed(Routes.AUTH_INTRODUCTION);
      }
    }
  }

  @override
  void onClose() {
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }
}
