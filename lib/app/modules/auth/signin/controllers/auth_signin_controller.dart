import 'package:app_lazam/app/api/auth.dart';
import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:app_lazam/app/shared/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthSigninController extends GetxController {
  TextEditingController phoneTextController = new TextEditingController();
  TextEditingController passwordTextController = new TextEditingController();

  @override
  void onInit() {
    super.onInit();
    phoneTextController.text = "01002089079";
    passwordTextController.text = "123456";
  }

  void login() async {
    ResponsModel responsModel = await WebServices().signin(
      phone: phoneTextController.text,
      password: passwordTextController.text,
    );

    if (responsModel.success) {
      Response response = responsModel.data;
      Get.find<UserAuth>().setUserToken(response.body['access_token']);

      getProfile().then(
        (userModel) {
          if (Role.values[userModel.role] == Role.FoodProvider) {
            if (UserStatus.values[userModel.status] == UserStatus.Active) {
              Get.offAllNamed(Routes.LAYOUT_FOOD_PROVIDER);
            } else {
              Get.defaultDialog(
                title: 'حساب غير مفعل',
                content: Text('حساب غير مفعل'),
                confirm: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('حساب غير مفعل'),
                ),
              );
            }
          } else if (Role.values[userModel.role] == Role.Host) {
            Get.offAllNamed(Routes.LAYOUT_HOST);
          }
        },
        onError: (err) {
          Get.offAllNamed(Routes.AUTH_INTRODUCTION);
        },
      );
    } else {
      Get.snackbar(AppName, 'خطاء فى كلمة المرور و كلمة السر');
    }
  }
}
