import 'package:get/get.dart';

import 'package:football_app_ui/modules/home/bindings/home_bindings.dart';
import 'package:football_app_ui/modules/home/views/home_view.dart';
import 'package:football_app_ui/modules/player_info/bindings/player_info_bindings.dart';
import 'package:football_app_ui/modules/player_info/views/player_info_view.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: '/home',
      page: () => const HomeView(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: '/playerinfo',
      page: () => const PlayerInfoView(),
      binding: PlayerInfoBindings(),
    ),
  ];
}
