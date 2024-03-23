import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:football_app_ui/config/app_colors.dart';
import 'package:football_app_ui/widgets/backgroundimage.dart';
import 'package:football_app_ui/modules/splash/controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Center(
            child: CircularProgressIndicator(
              color: AppColors.primary1,
            ),
          ),
        ],
      ),
    );
  }
}
