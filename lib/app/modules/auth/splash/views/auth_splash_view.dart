import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../controllers/auth_splash_controller.dart';

class AuthSplashView extends GetView<AuthSplashController> {
  AuthSplashController controller = Get.put(AuthSplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('images/White LOGO.svg'),
            SizedBox(height: 30,),
            SizedBox(
              height: 60,
              width: 100,
              child: LoadingIndicator(
                indicatorType: Indicator.lineScale,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
