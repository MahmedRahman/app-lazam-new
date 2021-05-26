import 'package:app_lazam/app/api/auth.dart';
import 'package:app_lazam/app/data/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:get_storage/get_storage.dart';

void main() async {   
  await GetStorage.init();
  await Get.putAsync<UserAuth>(() async => await UserAuth());
  runApp(
    GetMaterialApp(
      textDirection: TextDirection.rtl,
      title: "Lazam",
      theme: ThemeData(
        primaryColor: KprimaryColor,
        accentColor: KsecondaryColor,
        fontFamily: 'Tajawal',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(KprimaryColor),
            minimumSize: MaterialStateProperty.all(
              Size(60, 55),
            ),
          ),
        ),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      builder: EasyLoading.init(),
    ),
  );
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}
