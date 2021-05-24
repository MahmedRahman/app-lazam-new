import 'dart:ui';

import 'package:app_lazam/app/data/app_const.dart';
import 'package:app_lazam/app/modules/offer_fb/list/views/offer_fb_list_view.dart';
import 'package:app_lazam/app/modules/profile_food_provider/views/profile_food_provider_view.dart';
import 'package:app_lazam/app/modules/request/list/views/request_list_view.dart';
import 'package:app_lazam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/layout_food_provider_controller.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class LayoutFoodProviderView extends GetView<LayoutFoodProviderController> {
  GlobalKey<SliderMenuContainerState> _key =
      new GlobalKey<SliderMenuContainerState>();

  List<Widget> Screen = [
    RequestListView(),
    OfferFbListView(),
    ProfileFoodProviderView()
  ];

  var selectScreen = 2.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SliderMenuContainer(
        appBarColor: KprimaryColor,
        slideDirection: SlideDirection.RIGHT_TO_LEFT,
        isDraggable: false,
        title: Text('Food Provider'),
        hasAppBar: false,
        key: _key,
        sliderMenu: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text('محمد عبد الرحمن'),
              subtitle: Text('atp2020@outlook.com'),
              leading: CircleAvatar(
                backgroundColor: KprimaryColor,
                child: Text(
                  'M',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            ListTile(
              dense: true,
              leading: Icon(Icons.home),
              title: Text('الـرئيسية'),
            ),
            ListTile(
              dense: true,
              leading: Icon(FontAwesomeIcons.userCircle),
              title: Text('الملف الشخصى'),
            ),
            ListTile(
              dense: true,
              leading: Icon(FontAwesomeIcons.jediOrder),
              title: Text('الطلبيات'),
            ),
            Divider(),
            ListTile(
              dense: true,
              leading: Icon(FontAwesomeIcons.terminal),
              title: Text('خصوصية'),
            ),
            ListTile(
              dense: true,
              leading: Icon(FontAwesomeIcons.codeBranch),
              title: Text('الشـروط'),
            ),
            Divider(),
            ListTile(
              dense: true,
              leading: Icon(FontAwesomeIcons.contao),
              title: Text('اتصــل بنـا'),
            ),
            Divider(),
            ListTile(
              dense: true,
              leading: Icon(FontAwesomeIcons.signOutAlt),
              title: Text('تسجيـل الخـروج'),
            )
          ],
        ),
        sliderMain: Scaffold(
          appBar: AppBar(
            elevation: 5,
            title: SvgPicture.asset(
              'images/White LOGO.svg',
              height: 40,
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                FontAwesomeIcons.bars,
                color: KsecondaryColor,
              ),
              onPressed: () {
                _key.currentState.toggle();
              },
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.notification_important,
                  color: KsecondaryColor,
                ),
                onPressed: () {
                  Get.toNamed(Routes.NOTIFACTION);
                },
              )
            ],
          ),
          body: Obx(() {
            return Screen[selectScreen.value];
          }),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: KsecondaryColor,
            buttonBackgroundColor: KprimaryColor,
            index: selectScreen.value,
            height: 60,
            color: KprimaryColor,
            items: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  FontAwesomeIcons.utensils,
                  color: KsecondaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(
                  FontAwesomeIcons.breadSlice,
                  color: KsecondaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  FontAwesomeIcons.solidUserCircle,
                  color: KsecondaryColor,
                ),
              ),
            ],
            onTap: (index) {
              selectScreen.value = index;
            },
          ),
        ),
      ),
    );
  }
}
