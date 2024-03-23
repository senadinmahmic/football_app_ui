import 'package:get/get.dart';

import 'package:football_app_ui/modules/player_info/controllers/player_info_controller.dart';

class PlayerInfoBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayerInfoController>(() => PlayerInfoController());
  }
}
