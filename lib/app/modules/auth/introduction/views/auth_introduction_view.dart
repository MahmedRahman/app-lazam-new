import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../controllers/auth_introduction_controller.dart';

class AuthIntroductionView extends GetView<AuthIntroductionController> {
  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      titleWidget: Text(
        'بكل سهولة استبدل النص',
        style: TextStyle(
            color: KprimaryColor, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      bodyWidget: Text(
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق'),
      image: SvgPicture.asset(
        'images/Choices.svg',
        width: 200,
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        'بكل سهولة استبدل النص',
        style: TextStyle(
            color: KprimaryColor, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      bodyWidget: Text(
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق'),
      image: SvgPicture.asset(
        'images/Confetti.svg',
        width: 200,
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        'بكل سهولة استبدل النص',
        style: TextStyle(
            color: KprimaryColor, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      bodyWidget: Text(
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق'),
      image: SvgPicture.asset(
        'images/Cost.svg',
        width: 200,
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: IntroductionScreen(
          pages: listPagesViewModel,
          onDone: () {
            Get.toNamed(Routes.AUTH_USER_DIRECTION);
          },
          onSkip: () {
            Get.toNamed(Routes.AUTH_USER_DIRECTION);
          },
          showSkipButton: true,
          skip: Text(
            'تخطى',
            style: TextStyle(color: KprimaryColor, fontWeight: FontWeight.bold),
          ),
          next: Text(
            'التالى',
            style: TextStyle(color: KprimaryColor, fontWeight: FontWeight.bold),
          ),
          done: Text(
            'أبداء',
            style: TextStyle(color: KprimaryColor, fontWeight: FontWeight.bold),
          ),
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: KprimaryColor,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
      ),
    );
  }
}
