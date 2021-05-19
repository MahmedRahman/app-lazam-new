import 'package:get/get.dart';

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
import 'package:app_lazam/app/modules/profile_food_provider/bindings/profile_food_provider_binding.dart';
import 'package:app_lazam/app/modules/profile_food_provider/views/profile_food_provider_view.dart';

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
  ];
}
