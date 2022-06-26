import 'package:doctor_app/app/modules/call/video/binding/video_call_binding.dart';
import 'package:doctor_app/app/modules/call/video/view/video_call_page.dart';
import 'package:doctor_app/app/modules/call/voice/binding/voice_call_binding.dart';
import 'package:doctor_app/app/modules/call/voice/view/voice_call_page.dart';
import 'package:doctor_app/app/modules/container/binding/container_binding.dart';
import 'package:doctor_app/app/modules/container/view/container_page.dart';
import 'package:doctor_app/app/modules/create/binding/createaccount_binding.dart';
import 'package:doctor_app/app/modules/create/view/create_account_page.dart';
import 'package:doctor_app/app/modules/detail/detail_binding.dart';
import 'package:doctor_app/app/modules/detail/detail_page.dart';
import 'package:doctor_app/app/modules/detail/diagnostic/binding/detail_diagnostic_binding.dart';
import 'package:doctor_app/app/modules/detail/diagnostic/view/detail_diagnostic_page.dart';
import 'package:doctor_app/app/modules/detail/infor/view/detail_infor_page.dart';
import 'package:doctor_app/app/modules/diagnostic/binding/diagnostic_bindng.dart';
import 'package:doctor_app/app/modules/diagnostic/view/diagnostic_page.dart';
import 'package:doctor_app/app/modules/forgotpassword/confirm/binding/confirm_binding.dart';
import 'package:doctor_app/app/modules/forgotpassword/confirm/view/confirm_page.dart';
import 'package:doctor_app/app/modules/forgotpassword/create/binding/createpassword_binding.dart';
import 'package:doctor_app/app/modules/forgotpassword/create/view/create_password_page.dart';
import 'package:doctor_app/app/modules/forgotpassword/forgot/binding/forgotpassword_binding.dart';
import 'package:doctor_app/app/modules/forgotpassword/forgot/view/forgot_password_page.dart';
import 'package:doctor_app/app/modules/group/binding/group_binding.dart';
import 'package:doctor_app/app/modules/group/view/group_page.dart';
import 'package:doctor_app/app/modules/history/view/history_page.dart';
import 'package:doctor_app/app/modules/home/view/home_page.dart';
import 'package:doctor_app/app/modules/login/binding/login_binding.dart';
import 'package:doctor_app/app/modules/login/view/login_page.dart';
import 'package:doctor_app/app/modules/notification/binding/notification_binding.dart';
import 'package:doctor_app/app/modules/notification/view/notification_page.dart';
import 'package:doctor_app/app/modules/offer/binding/offer_binding.dart';
import 'package:doctor_app/app/modules/offer/view/offer_page.dart';
import 'package:doctor_app/app/modules/order/examinationhistory/view/examination_history_page.dart';
import 'package:doctor_app/app/modules/order/infor/binding/infor_binding.dart';
import 'package:doctor_app/app/modules/order/order_detail_binding.dart';
import 'package:doctor_app/app/modules/order/order_detail_page.dart';
import 'package:doctor_app/app/modules/order/patient/binding/patient_binding.dart';
import 'package:doctor_app/app/modules/order/patient/view/patient_page.dart';
import 'package:doctor_app/app/modules/profile/edit/binding/editprofile_binding.dart';
import 'package:doctor_app/app/modules/profile/edit/view/edit_profile_page.dart';
import 'package:doctor_app/app/modules/profile/other_doctor/binding/other_doctor_binding.dart';
import 'package:doctor_app/app/modules/profile/other_doctor/view/other_doctor_page.dart';
import 'package:doctor_app/app/modules/profile/profile_binding.dart';
import 'package:doctor_app/app/modules/profile/profile_page.dart';
import 'package:doctor_app/app/modules/schedule/binding/schedule_binding.dart';
import 'package:doctor_app/app/modules/schedule/view/schedule_page.dart';
import 'package:doctor_app/app/modules/setting/binding/setting_binding.dart';
import 'package:doctor_app/app/modules/setting/view/setting_page.dart';
import 'package:doctor_app/app/modules/splash/binding/splash_binding.dart';
import 'package:doctor_app/app/modules/splash/view/splash_page.dart';
import 'package:doctor_app/app/modules/statistical/binding/statistical_binding.dart';
import 'package:doctor_app/app/modules/statistical/view/statistical_page.dart';
import 'package:doctor_app/app/modules/welcome/view/welcome_page.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

import '../modules/detail/infor/binding/detail_infor_binding.dart';
import '../modules/history/binding/history_binding.dart';
import '../modules/home/binding/home_binding.dart';
import '../modules/order/examinationhistory/binding/examination_history_binding.dart';
import '../modules/order/infor/view/infor_page.dart';

final pages = [
  GetPage(
    name: Routes.SPLASH,
    page: () => const SplashPage(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: Routes.WELCOME,
    page: () => const WelcomePage(),
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
    name: Routes.HISTORY,
    page: () => const HistoryPage(),
    binding: HistoryBinding(),
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
    name: Routes.INFOR,
    page: () => const InforPage(),
    binding: InforBinding(),
  ),
  GetPage(
    name: Routes.EXAMINATIONHISTORY,
    page: () => const ExaminationHistoryPage(),
    binding: ExaminationHistoryBinding(),
  ),
  GetPage(
    name: Routes.PATIENT,
    page: () => const PatientPage(),
    binding: PatientBinding(),
  ),
  GetPage(
    name: Routes.ORDERDETAIL,
    page: () => const OrderDetailPage(),
    bindings: [
      OrderDetailBinding(),
      InforBinding(),
      ExaminationHistoryBinding(),
      PatientBinding(),
    ],
  ),
  GetPage(
    name: Routes.VOICECALL,
    page: () => const VoiceCallPage(),
    binding: VoiceCallBinding(),
  ),
  GetPage(
    name: Routes.VIDEOCALL,
    page: () => const VideoCallPage(),
    binding: VideoCallBinding(),
  ),
  GetPage(
    name: Routes.DIAGNOSTIC,
    page: () => const DiagnosticPage(),
    binding: DiagnosticBinding(),
  ),
  GetPage(
    name: Routes.SCHEDULE,
    page: () => const SchedulePage(),
    binding: ScheduleBinding(),
  ),
  GetPage(
    name: Routes.GROUP,
    page: () => const GroupPage(),
    binding: GroupBinding(),
  ),
  GetPage(
    name: Routes.STATISTICAL,
    page: () => const StatisticalPage(),
    binding: StatisticalBinding(),
  ),
  GetPage(
    name: Routes.CONTAINER,
    page: () => const ContainerPage(),
    bindings: [
      ContainerBinding(),
      HomeBinding(),
      HistoryBinding(),
      SettingBinding(),
      ScheduleBinding(),
      GroupBinding(),
      StatisticalBinding(),
      ProfileBinding(),
    ],
  ),
  GetPage(
    name: Routes.DETAILINFOR,
    page: () => const DetailInforPage(),
    binding: DetailInforBinding(),
  ),
  GetPage(
    name: Routes.DETAILDIAGNOSTIC,
    page: () => const DetailDiagnosticPage(),
    binding: DetailDiagnosticBinding(),
  ),
  GetPage(
    name: Routes.DETAIL,
    page: () => const DetailPage(),
    bindings: [
      DetailBinding(),
      DetailInforBinding(),
      DetailDiagnosticBinding(),
    ],
  ),
  GetPage(
    name: Routes.OTHER_DOCTOR,
    page: () => const OtherDoctorPage(),
    binding: OtherDoctorBinding(),
  ),
];
