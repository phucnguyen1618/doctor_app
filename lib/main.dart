import 'package:doctor_app/app/base/di.dart';
import 'package:doctor_app/app/shared/constants/common.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await DependencyInjection.init(DEV_ENVIRONMENT);
  runApp(const MyApp());
  configLoading();
}
