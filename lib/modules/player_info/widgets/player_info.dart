import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:football_app_ui/data/dummy_data.dart';
import 'package:football_app_ui/modules/player_info/controllers/player_info_controller.dart';

class PlayerInfo extends GetView<PlayerInfoController> {
  const PlayerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 10,
            bottom: 10,
          ),
          child: Transform(
            transform: Matrix4.skewX(-0.2),
            child: const Text(
              'MORE INFO',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Text(
            getPlayerDescription(
                playersList[controller.selectedPlayer.value].name),
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

String getPlayerDescription(String playerName) {
  return "Meet $playerName, a dynamic football talent known for their speed, skill, and determination on the field. "
      "With lightning-fast moves and a strategic mindset, $playerName dominates the game, leaving opponents in awe. "
      "Whether scoring goals or making crucial plays, $playerName brings excitement to every match. "
      "Watch out for their unstoppable energy and unmatched passion for the sport!";
}
