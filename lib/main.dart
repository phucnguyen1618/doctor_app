import 'package:doctor_app/app/base/di.dart';
import 'package:doctor_app/app/shared/constants/common.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init(DEV_ENVIRONMENT);
  runApp(const MyApp());
}
