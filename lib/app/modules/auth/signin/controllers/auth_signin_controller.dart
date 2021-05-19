import 'package:app_lazam/app/api/auth.dart';
import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthSigninController extends GetxController {
  TextEditingController phoneTextController = new TextEditingController();
  TextEditingController passwordTextController = new TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void login() async {

    ResponsModel responsModel = await WebServices().signin(
      phone: phoneTextController.text,
      password: passwordTextController.text,
    );

    if (responsModel.success) {
      Response response = responsModel.data;
      Get.find<UserAuth>().setUserToken(response.body['access_token']);

      if (response.body['Role'] == "Food Provider") {

        Get.offAllNamed(Routes.LAYOUT_FOOD_PROVIDER);
      
      } else {
      
        Get.offAllNamed(Routes.LAYOUT_HOST);
      
      }

    } else {
      Get.snackbar(AppName, 'خطاء فى كلمة المرور و كلمة السر');
    }
  }
}
