import 'package:doctor_app/app/routes/app_pages.dart';
import 'package:doctor_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


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
