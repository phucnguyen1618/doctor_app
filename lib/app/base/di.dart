import 'dart:io';

import 'package:get/get.dart';
import 'package:ui_api/repository/doctor_app_repository.dart';
import 'package:ui_api/network/dio_client.dart';

import '../shared/constants/common.dart';
import '../shared/services/config_service.dart';
import '../shared/services/storage_service.dart';
import 'package:ui_api/repository/impl/doctor_app_repository_impl.dart';
import 'package:ui_api/datasource/remote/doctor_app_api.dart';

class DependencyInjection {
  static Future init(String environment) async {
    HttpOverrides.global = MyHttpOverrides();

    final config = await ConfigService().init(environment);
    Get.put(() => config);
    await Get.putAsync(() => StorageService().init());
  
    // UI api
    final _dioUIAPI =
        await DioClient.setup(baseUrl: config.value[UIAPIDomain] ?? '');
    final uiAPI = DoctorAppUIAPI(_dioUIAPI);
    final DoctorAppRepository uiRepo = DoctorAppRepositoryImpl(uiAPI);
    Get.put(uiRepo);
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
