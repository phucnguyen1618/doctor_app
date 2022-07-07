import 'package:doctor_app/app/routes/app_pages.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'shared/constants/colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.noTransition,
      debugShowCheckedModeBanner: false,
      title: 'AI.CARE Doctor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: pages,
      initialRoute: Routes.SPLASH,
      
    );
  }
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.threeBounce
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = AppColor.accentColorLight
    ..backgroundColor = AppColor.primaryBackgroundColorLight
    ..indicatorColor = AppColor.primaryColorLight
    ..textColor = AppColor.primaryColorLight
    ..maskColor = AppColor.errorColorLight
    ..userInteractions = false
    ..dismissOnTap = false
    ..animationStyle = EasyLoadingAnimationStyle.scale;
}
