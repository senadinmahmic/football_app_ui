import 'package:flutter/material.dart';
import 'package:football_app_ui/modules/player_info/widgets/player_info.dart';
import 'package:football_app_ui/modules/player_info/widgets/player_info_app_bar.dart';
import 'package:football_app_ui/modules/player_info/widgets/player_info_card.dart';
import 'package:football_app_ui/modules/player_info/widgets/player_stats.dart';
import 'package:football_app_ui/widgets/backgroundimage.dart';
import 'package:get/get.dart';

import 'package:football_app_ui/modules/player_info/controllers/player_info_controller.dart';

class PlayerInfoView extends GetView<PlayerInfoController> {
  const PlayerInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        BackgroundImage(),
        Column(
          children: [
            PlayerInfoAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PlayerInfoCard(),
                    PlayerStats(),
                    PlayerInfo(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
