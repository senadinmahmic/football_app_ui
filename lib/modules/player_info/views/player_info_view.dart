import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:football_app_ui/modules/player_info/controllers/player_info_controller.dart';

class PlayerInfoView extends GetView<PlayerInfoController> {
  const PlayerInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player Info'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Player Info'),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
