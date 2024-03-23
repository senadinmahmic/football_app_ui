import 'package:get/get.dart';

import 'package:football_app_ui/modules/splash/controllers/splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
