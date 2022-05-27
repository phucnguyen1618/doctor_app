import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/base/di.dart';
import 'app/shared/constants/common.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init(PROD_ENVIRONMENT);

  runApp(const MyApp());
}
