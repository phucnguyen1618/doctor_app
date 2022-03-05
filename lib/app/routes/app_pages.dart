import 'package:doctor_app/app/modules/call/binding/call_binding.dart';
import 'package:doctor_app/app/modules/call/view/call_page.dart';
import 'package:doctor_app/app/modules/container/binding/container_binding.dart';
import 'package:doctor_app/app/modules/container/view/container_page.dart';
import 'package:doctor_app/app/modules/create/binding/createaccount_binding.dart';
import 'package:doctor_app/app/modules/create/view/create_account_page.dart';
import 'package:doctor_app/app/modules/forgotpassword/confirm/binding/confirm_binding.dart';
import 'package:doctor_app/app/modules/forgotpassword/confirm/view/confirm_page.dart';
import 'package:doctor_app/app/modules/forgotpassword/create/binding/createpassword_binding.dart';
import 'package:doctor_app/app/modules/forgotpassword/create/view/create_password_page.dart';
import 'package:doctor_app/app/modules/forgotpassword/forgot/binding/forgotpassword_binding.dart';
import 'package:doctor_app/app/modules/forgotpassword/forgot/view/forgot_password_page.dart';
import 'package:doctor_app/app/modules/home/view/home_page.dart';
import 'package:doctor_app/app/modules/login/binding/login_binding.dart';
import 'package:doctor_app/app/modules/login/view/login_page.dart';
import 'package:doctor_app/app/modules/notification/binding/notification_binding.dart';
import 'package:doctor_app/app/modules/notification/view/notification_page.dart';
import 'package:doctor_app/app/modules/offer/binding/offer_binding.dart';
import 'package:doctor_app/app/modules/offer/view/offer_page.dart';
import 'package:doctor_app/app/modules/order/history/binding/history_binding.dart';
import 'package:doctor_app/app/modules/order/infor/binding/infor_binding.dart';
import 'package:doctor_app/app/modules/order/order_detail_binding.dart';
import 'package:doctor_app/app/modules/order/order_detail_page.dart';
import 'package:doctor_app/app/modules/order/patient/binding/patient_binding.dart';
import 'package:doctor_app/app/modules/profile/edit/binding/editprofile_binding.dart';
import 'package:doctor_app/app/modules/profile/edit/view/edit_profile_page.dart';
import 'package:doctor_app/app/modules/profile/profile_binding.dart';
import 'package:doctor_app/app/modules/profile/profile_page.dart';
import 'package:doctor_app/app/modules/setting/binding/setting_binding.dart';
import 'package:doctor_app/app/modules/setting/view/setting_page.dart';
import 'package:doctor_app/app/modules/splash/binding/splash_binding.dart';
import 'package:doctor_app/app/modules/splash/view/splash_page.dart';
import 'package:doctor_app/app/modules/welcome/binding/welcome_binding.dart';
import 'package:doctor_app/app/modules/welcome/view/welcome_page.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

import '../modules/home/binding/home_binding.dart';

final pages = [
  GetPage(
    name: Routes.SPLASH,
    page: () => const SplashPage(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: Routes.WELCOME,
    page: () => const WelcomePage(),
    binding: WelcomeBinding(),
  ),
  GetPage(
    name: Routes.FORGOTPASSWORD,
    page: () => const ForgotPasswordPage(),
    binding: ForgotPasswordBinding(),
  ),
  GetPage(
    name: Routes.CONFIRM,
    page: () => const ConfirmPage(),
    binding: ConfirmBinding(),
  ),
  GetPage(
    name: Routes.CREATEPASSWORD,
    page: () => const CreatePasswordPage(),
    binding: CreatePasswordBinding(),
  ),
  GetPage(
    name: Routes.CREATEACCOUNT,
    page: () => const CreateAccountPage(),
    binding: CreateAccountBinding(),
  ),
  GetPage(
    name: Routes.LOGIN,
    page: () => const LoginPage(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: Routes.HOME,
    page: () => const HomePage(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: Routes.NOTIFICATION,
    page: () => const NotificationPage(),
    binding: NotificationBinding(),
  ),
  GetPage(
    name: Routes.EDIT,
    page: () => const EditProfilePage(),
    binding: EditProfileBinding(),
  ),
  GetPage(
    name: Routes.PROFILE,
    page: () => const ProfilePage(),
    binding: ProfileBinding(),
  ),
  GetPage(
    name: Routes.SETTING,
    page: () => const SettingPage(),
    binding: SettingBinding(),
  ),
  GetPage(
    name: Routes.OFFER,
    page: () => const OfferPage(),
    binding: OfferBinding(),
  ),
  GetPage(
    name: Routes.ORDERDETAIL,
    page: () => const OrderDetailPage(),
    bindings: [
      OrderDetailBinding(),
      InforBinding(),
      HistoryBinding(),
      PatientBinding(),
    ],
  ),
  GetPage(
    name: Routes.CALL,
    page: () => const CallPage(),
    binding: CallBinding(),
  ),
  GetPage(
    name: Routes.CONTAINER,
    page: () => const ContainerPage(),
    bindings: [
      ContainerBinding(),
      HomeBinding(),
      SettingBinding(),
    ],
  ),
];
