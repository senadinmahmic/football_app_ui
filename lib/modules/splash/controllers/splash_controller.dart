import 'package:football_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAllNamed(Routes.HOME);
      },
    );
    super.onInit();
  }
}
