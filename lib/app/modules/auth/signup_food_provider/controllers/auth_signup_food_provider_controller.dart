import 'package:app_lazam/app/api/response_model.dart';
import 'package:app_lazam/app/api/webServices.dart';
import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthSignupFoodProviderController extends GetxController {
  //TODO: Implement AuthSignupFoodProviderController

  TextEditingController nameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController phoneTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController descriptionTextController = TextEditingController();
  TextEditingController addressTextController = TextEditingController();
  int cityid = 0;
  String imageBytes = '';

  
  @override
  void onInit() {
    super.onInit();
  }

  accountRegister() async {


    ResponsModel responsModel = await WebServices().accountRegister(
      fullName: nameTextController.text,
      email: emailTextController.text,
      address: addressTextController.text,
      phoneNumber: phoneTextController.text,
      password: passwordTextController.text,
      description: descriptionTextController.text,
      cityId: cityid,
      imageBytes: imageBytes.toString(),
      userType: UserType.FoodProvider.index,
    );

    if (responsModel.success) {
      Response response = responsModel.data;
      if (response.body['IsSuccess']) {
        Get.offAndToNamed(
          Routes.AUTH_SIGNIN,
          arguments: [
            phoneTextController.text,
            passwordTextController.text,
          ],
        );
      } else {
        Get.snackbar(AppName, response.body['Message']);
      }
    }



  }
}
