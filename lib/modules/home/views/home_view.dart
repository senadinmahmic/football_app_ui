import 'package:flutter/material.dart';
import 'package:football_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

import 'package:football_app_ui/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Home'),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.PLAYERINFO);
              },
              child: const Text('Player Info'),
            ),
          ],
        ),
      ),
    );
  }
}
