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
import 'package:app_lazam/app/modules/contact/add/bindings/contact_add_binding.dart';
import 'package:app_lazam/app/modules/contact/add/views/contact_add_view.dart';
import 'package:app_lazam/app/modules/contact/list/bindings/contact_list_binding.dart';
import 'package:app_lazam/app/modules/contact/list/views/contact_list_view.dart';
import 'package:app_lazam/app/modules/contactgroup/add/bindings/contactgroup_add_binding.dart';
import 'package:app_lazam/app/modules/contactgroup/add/views/contactgroup_add_view.dart';
import 'package:app_lazam/app/modules/contactgroup/list/bindings/contactgroup_list_binding.dart';
import 'package:app_lazam/app/modules/contactgroup/list/views/contactgroup_list_view.dart';
import 'package:app_lazam/app/modules/contacthome/bindings/contacthome_binding.dart';
import 'package:app_lazam/app/modules/contacthome/views/contacthome_view.dart';
import 'package:app_lazam/app/modules/event/add/bindings/event_add_binding.dart';
import 'package:app_lazam/app/modules/event/add/views/event_add_view.dart';
import 'package:app_lazam/app/modules/event/list/bindings/event_list_binding.dart';
import 'package:app_lazam/app/modules/event/list/views/event_list_view.dart';
import 'package:app_lazam/app/modules/home/bindings/home_binding.dart';
import 'package:app_lazam/app/modules/home/views/home_view.dart';
import 'package:app_lazam/app/modules/layout_food_provider/bindings/layout_food_provider_binding.dart';
import 'package:app_lazam/app/modules/layout_food_provider/views/layout_food_provider_view.dart';
import 'package:app_lazam/app/modules/layout_host/bindings/layout_host_binding.dart';
import 'package:app_lazam/app/modules/layout_host/views/layout_host_view.dart';
import 'package:app_lazam/app/modules/notifaction/bindings/notifaction_binding.dart';
import 'package:app_lazam/app/modules/notifaction/views/notifaction_view.dart';
import 'package:app_lazam/app/modules/offer/add/bindings/offer_fb_add_binding.dart';
import 'package:app_lazam/app/modules/offer/add/views/offer_fb_add_view.dart';
import 'package:app_lazam/app/modules/offer/detail/bindings/offer_fb_detail_binding.dart';
import 'package:app_lazam/app/modules/offer/detail/views/offer_fb_detail_view.dart';
import 'package:app_lazam/app/modules/offer/list/bindings/offer_fb_list_binding.dart';
import 'package:app_lazam/app/modules/offer/list/views/offer_fb_list_view.dart';
import 'package:app_lazam/app/modules/offer_host/detail/bindings/offer_host_detail_binding.dart';
import 'package:app_lazam/app/modules/offer_host/detail/views/offer_host_detail_view.dart';
import 'package:app_lazam/app/modules/offer_host/list/bindings/offer_host_list_binding.dart';
import 'package:app_lazam/app/modules/offer_host/list/views/offer_host_list_view.dart';
import 'package:app_lazam/app/modules/offer_host/order/bindings/offer_host_order_binding.dart';
import 'package:app_lazam/app/modules/offer_host/order/views/offer_host_order_view.dart';
import 'package:app_lazam/app/modules/offer_host/provider/detail/bindings/offer_host_provider_detail_binding.dart';
import 'package:app_lazam/app/modules/offer_host/provider/detail/views/offer_host_provider_detail_view.dart';
import 'package:app_lazam/app/modules/offer_host/provider/list/bindings/offer_host_provider_list_binding.dart';
import 'package:app_lazam/app/modules/offer_host/provider/list/views/offer_host_provider_list_view.dart';
import 'package:app_lazam/app/modules/profile_event_macker/edit/bindings/profile_event_macker_edit_binding.dart';
import 'package:app_lazam/app/modules/profile_event_macker/edit/views/profile_event_macker_edit_view.dart';
import 'package:app_lazam/app/modules/profile_event_macker/view/bindings/profile_event_macker_view_binding.dart';
import 'package:app_lazam/app/modules/profile_event_macker/view/views/profile_event_macker_view_view.dart';
import 'package:app_lazam/app/modules/profile_food_provider/bindings/profile_food_provider_binding.dart';
import 'package:app_lazam/app/modules/profile_food_provider/edit/bindings/profile_food_provider_edit_binding.dart';
import 'package:app_lazam/app/modules/profile_food_provider/edit/views/profile_food_provider_edit_view.dart';
import 'package:app_lazam/app/modules/profile_food_provider/view/bindings/profile_food_provider_view_binding.dart';
import 'package:app_lazam/app/modules/profile_food_provider/view/views/profile_food_provider_view_view.dart';
import 'package:app_lazam/app/modules/profile_food_provider/views/profile_food_provider_view.dart';
import 'package:app_lazam/app/modules/request/detail/bindings/request_detail_binding.dart';
import 'package:app_lazam/app/modules/request/detail/views/request_detail_view.dart';
import 'package:app_lazam/app/modules/request/list/bindings/request_list_binding.dart';
import 'package:app_lazam/app/modules/request/list/views/request_list_view.dart';
import 'package:app_lazam/app/modules/request/request_history/bindings/offer_fb_request_history_binding.dart';
import 'package:app_lazam/app/modules/request/request_history/views/offer_fb_request_history_view.dart';
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
      children: [],
    ),
    GetPage(
      name: _Paths.PROFILE_FOOD_PROVIDER_EDIT,
      page: () => ProfileFoodProviderEditView(),
      binding: ProfileFoodProviderEditBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_FOOD_PROVIDER_VIEW,
      page: () => ProfileFoodProviderViewView(),
      binding: ProfileFoodProviderViewBinding(),
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
      name: _Paths.NOTIFACTION,
      page: () => NotifactionView(),
      binding: NotifactionBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_LIST,
      page: () => ContactListView(),
      binding: ContactListBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_ADD,
      page: () => ContactAddView(),
      binding: ContactAddBinding(),
    ),
    GetPage(
      name: _Paths.CONTACTGROUP_LIST,
      page: () => ContactgroupListView(),
      binding: ContactgroupListBinding(),
    ),
    GetPage(
      name: _Paths.CONTACTGROUP_ADD,
      page: () => ContactgroupAddView(),
      binding: ContactgroupAddBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_EVENT_MACKER_VIEW,
      page: () => ProfileEventMackerViewView(),
      binding: ProfileEventMackerViewBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_EVENT_MACKER_EDIT,
      page: () => ProfileEventMackerEditView(),
      binding: ProfileEventMackerEditBinding(),
    ),
    GetPage(
      name: _Paths.CONTACTHOME,
      page: () => ContacthomeView(),
      binding: ContacthomeBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_ADD,
      page: () => EventAddView(),
      binding: EventAddBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_LIST,
      page: () => EventListView(),
      binding: EventListBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_HOST_LIST,
      page: () => OfferHostListView(),
      binding: OfferHostListBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_HOST_DETAIL,
      page: () => OfferHostDetailView(),
      binding: OfferHostDetailBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_HOST_ORDER,
      page: () => OfferHostOrderView(),
      binding: OfferHostOrderBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_HOST_PROVIDER_LIST,
      page: () => OfferHostProviderListView(),
      binding: OfferHostProviderListBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_HOST_PROVIDER_DETAIL,
      page: () => OfferHostProviderDetailView(),
      binding: OfferHostProviderDetailBinding(),
    ),
  ];
}
