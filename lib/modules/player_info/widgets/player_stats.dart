import 'dart:math';

import 'package:flutter/material.dart';
import 'package:football_app_ui/config/app_colors.dart';

import 'package:football_app_ui/modules/player_info/widgets/circualr_indicator.dart';

class PlayerStats extends StatelessWidget {
  const PlayerStats({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 25,
            bottom: 10,
          ),
          child: Transform(
            transform: Matrix4.skewX(-0.2),
            child: const Text(
              'STATISTIC',
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
            horizontal: 20,
          ),
          child: Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircularIndicator(
                    width: 60,
                    height: 60,
                    title: 'Win Rate',
                    value: 0.75,
                    percentage: '75%',
                    barWidth: 8,
                    percentageFontSize: 14,
                  ),
                  CircularIndicator(
                    width: screenSize.width < 400 ? 85 : 100,
                    height: screenSize.width < 400 ? 85 : 100,
                    title: 'Win Rate',
                    value: 0.79,
                    percentage: '79%',
                    barWidth: 12,
                    percentageFontSize: 20,
                  ),
                  const CircularIndicator(
                    width: 60,
                    height: 60,
                    title: 'Win Rate',
                    value: 0.62,
                    percentage: '62%',
                    barWidth: 8,
                    percentageFontSize: 14,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: -20,
                        left: -15,
                        child: Image.asset(
                          'assets/images/stats_images/games_played.png',
                          color: Colors.white10,
                          width: 80,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Games',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          '${Random.secure().nextInt(25) + 15}',
                          style: const TextStyle(
                            color: AppColors.primary1,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: -20,
                        left: -5,
                        child: Image.asset(
                          'assets/images/stats_images/goals.png',
                          color: Colors.white10,
                          width: 80,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Goals',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          '${Random.secure().nextInt(10) + 15}',
                          style: const TextStyle(
                            color: AppColors.primary1,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: -15,
                        left: -10,
                        child: Image.asset(
                          'assets/images/stats_images/assists.png',
                          color: Colors.white10,
                          width: 80,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Assists',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          '${Random.secure().nextInt(10) + 15}',
                          style: const TextStyle(
                            color: AppColors.primary1,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
