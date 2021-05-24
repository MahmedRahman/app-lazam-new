import 'package:get/get.dart';

import 'package:app_lazam/app/modules/Profile_evant_macker/bindings/profile_evant_macker_binding.dart';
import 'package:app_lazam/app/modules/Profile_evant_macker/views/profile_evant_macker_view.dart';
import 'package:app_lazam/app/modules/auth/forget_password/bindings/auth_forget_password_binding.dart';
import 'package:app_lazam/app/modules/auth/forget_password/views/auth_forget_password_view.dart';
import 'package:app_lazam/app/modules/auth/introduction/bindings/auth_introduction_binding.dart';
import 'package:app_lazam/app/modules/auth/introduction/views/auth_introduction_view.dart';
import 'package:app_lazam/app/modules/auth/signin/bindings/auth_signin_binding.dart';
import 'package:app_lazam/app/modules/auth/signin/views/auth_signin_view.dart';
import 'package:app_lazam/app/modules/auth/signup_food_provider/bindings/auth_signup_food_provider_binding.dart';
import 'package:app_lazam/app/modules/auth/signup_food_provider/views/auth_signup_food_provider_view.dart';
import 'package:app_lazam/app/modules/auth/signup_host/bindings/auth_signup_host_binding.dart';
import 'package:app_lazam/app/modules/auth/signup_host/views/auth_signup_host_view.dart';
import 'package:app_lazam/app/modules/auth/splash/bindings/auth_splash_binding.dart';
import 'package:app_lazam/app/modules/auth/splash/views/auth_splash_view.dart';
import 'package:app_lazam/app/modules/auth/user_direction/bindings/auth_user_direction_binding.dart';
import 'package:app_lazam/app/modules/auth/user_direction/views/auth_user_direction_view.dart';
import 'package:app_lazam/app/modules/home/bindings/home_binding.dart';
import 'package:app_lazam/app/modules/home/views/home_view.dart';
import 'package:app_lazam/app/modules/layout_food_provider/bindings/layout_food_provider_binding.dart';
import 'package:app_lazam/app/modules/layout_food_provider/views/layout_food_provider_view.dart';
import 'package:app_lazam/app/modules/layout_host/bindings/layout_host_binding.dart';
import 'package:app_lazam/app/modules/layout_host/views/layout_host_view.dart';
import 'package:app_lazam/app/modules/notifaction/bindings/notifaction_binding.dart';
import 'package:app_lazam/app/modules/notifaction/views/notifaction_view.dart';
import 'package:app_lazam/app/modules/offer_fb/add/bindings/offer_fb_add_binding.dart';
import 'package:app_lazam/app/modules/offer_fb/add/views/offer_fb_add_view.dart';
import 'package:app_lazam/app/modules/offer_fb/detail/bindings/offer_fb_detail_binding.dart';
import 'package:app_lazam/app/modules/offer_fb/detail/views/offer_fb_detail_view.dart';
import 'package:app_lazam/app/modules/offer_fb/list/bindings/offer_fb_list_binding.dart';
import 'package:app_lazam/app/modules/offer_fb/list/views/offer_fb_list_view.dart';
import 'package:app_lazam/app/modules/offer_fb/request_history/bindings/offer_fb_request_history_binding.dart';
import 'package:app_lazam/app/modules/offer_fb/request_history/views/offer_fb_request_history_view.dart';
import 'package:app_lazam/app/modules/profile_food_provider/bindings/profile_food_provider_binding.dart';
import 'package:app_lazam/app/modules/profile_food_provider/views/profile_food_provider_view.dart';
import 'package:app_lazam/app/modules/request/detail/bindings/request_detail_binding.dart';
import 'package:app_lazam/app/modules/request/detail/views/request_detail_view.dart';
import 'package:app_lazam/app/modules/request/list/bindings/request_list_binding.dart';
import 'package:app_lazam/app/modules/request/list/views/request_list_view.dart';
import 'package:app_lazam/app/modules/settings/bindings/settings_binding.dart';
import 'package:app_lazam/app/modules/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.AUTH_SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_SPLASH,
      page: () => AuthSplashView(),
      binding: AuthSplashBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_INTRODUCTION,
      page: () => AuthIntroductionView(),
      binding: AuthIntroductionBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_USER_DIRECTION,
      page: () => AuthUserDirectionView(),
      binding: AuthUserDirectionBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_SIGNIN,
      page: () => AuthSigninView(),
      binding: AuthSigninBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_FORGET_PASSWORD,
      page: () => AuthForgetPasswordView(),
      binding: AuthForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_SIGNUP_HOST,
      page: () => AuthSignupHostView(),
      binding: AuthSignupHostBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_SIGNUP_FOOD_PROVIDER,
      page: () => AuthSignupFoodProviderView(),
      binding: AuthSignupFoodProviderBinding(),
    ),
    GetPage(
      name: _Paths.LAYOUT_FOOD_PROVIDER,
      page: () => LayoutFoodProviderView(),
      binding: LayoutFoodProviderBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_FOOD_PROVIDER,
      page: () => ProfileFoodProviderView(),
      binding: ProfileFoodProviderBinding(),
    ),
    GetPage(
      name: _Paths.LAYOUT_HOST,
      page: () => LayoutHostView(),
      binding: LayoutHostBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_FB_LIST,
      page: () => OfferFbListView(),
      binding: OfferFbListBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_FB_ADD,
      page: () => OfferFbAddView(),
      binding: OfferFbAddBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_FB_DETAIL,
      page: () => OfferFbDetailView(),
      binding: OfferFbDetailBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_FB_REQUEST_HISTORY,
      page: () => OfferFbRequestHistoryView(),
      binding: OfferFbRequestHistoryBinding(),
    ),
    GetPage(
      name: _Paths.REQUEST_LIST,
      page: () => RequestListView(),
      binding: RequestListBinding(),
    ),
    GetPage(
      name: _Paths.REQUEST_DETAIL,
      page: () => RequestDetailView(),
      binding: RequestDetailBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_EVANT_MACKER,
      page: () => ProfileEvantMackerView(),
      binding: ProfileEvantMackerBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFACTION,
      page: () => NotifactionView(),
      binding: NotifactionBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
