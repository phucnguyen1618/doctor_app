import 'package:doctor_app/app/modules/splash/binding/splash_binding.dart';
import 'package:doctor_app/app/routes/app_pages.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: SplashBinding(),
      getPages: pages,
      initialRoute: Routes.SPLASH,
    );
  }
}
