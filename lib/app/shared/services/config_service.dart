import 'package:get/get.dart';
import '../../resource/assets_resources/config/config_environment.dart';

class ConfigService {
  Future<EnvConfiguration> init(String environment) async {
    Get.lazyPut<EnvConfiguration>(
        () => EnvConfiguration(environment: environment));
    return EnvConfiguration(environment: environment);
  }
}
