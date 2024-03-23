import 'package:flutter/material.dart';
import 'package:football_app_ui/config/app_colors.dart';
import 'package:football_app_ui/data/dummy_data.dart';
import 'package:get/get.dart';

import 'package:football_app_ui/modules/player_info/controllers/player_info_controller.dart';
import 'package:football_app_ui/widgets/custom_container.dart';

class PlayerInfoCard extends GetView<PlayerInfoController> {
  const PlayerInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        clipBehavior: Clip.none,
        height: screenSize.width < 400 ? 156 : 170,
        width: double.infinity,
        child: Stack(
          children: [
            Row(
              children: [
                SizedBox(
                  width: screenSize.width < 400 ? 65 : 72.5,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                CustomContainer(
                  index: controller.selectedPlayer.value,
                  leftPdding: 3,
                  height: screenSize.width < 400 ? 156 : 170,
                  width: screenSize.width < 400 ? 130 : 145,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        playersList[controller.selectedPlayer.value].name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        playersList[controller.selectedPlayer.value].club,
                        style: const TextStyle(
                          color: AppColors.primary1,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InfoTextGrey(text: 'Born'),
                              InfoTextBold(text: '28 Apr 1996'),
                              SizedBox(height: 8),
                              InfoTextGrey(text: 'Height'),
                              InfoTextBold(text: '1.87 m'),
                            ],
                          ),
                          SizedBox(width: screenSize.width < 400 ? 25 : 45),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InfoTextGrey(text: 'Position'),
                              InfoTextBold(text: 'AMF'),
                              SizedBox(height: 8),
                              InfoTextGrey(text: 'Weight'),
                              InfoTextBold(text: '82kg'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoTextBold extends StatelessWidget {
  final String text;
  const InfoTextBold({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    );
  }
}

class InfoTextGrey extends StatelessWidget {
  final String text;
  const InfoTextGrey({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey[400],
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    );
  }
}
