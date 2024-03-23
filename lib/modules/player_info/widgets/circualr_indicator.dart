import 'dart:math';

import 'package:flutter/material.dart';
import 'package:football_app_ui/config/app_colors.dart';

class CircularIndicator extends StatelessWidget {
  final String title;
  final double value;
  final String percentage;
  final double height;
  final double width;
  final double barWidth;
  final double percentageFontSize;

  const CircularIndicator({
    super.key,
    required this.title,
    required this.value,
    required this.percentage,
    required this.height,
    required this.width,
    required this.barWidth,
    required this.percentageFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[400],
          ),
        ),
        const SizedBox(height: 15),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
              width: width,
              height: height,
              child: Transform.rotate(
                angle: pi,
                child: TweenAnimationBuilder(
                  duration: const Duration(milliseconds: 800),
                  tween: Tween<double>(begin: 0, end: value),
                  builder: (context, value, _) => CircularProgressIndicator(
                    value: value,
                    strokeWidth: barWidth,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      AppColors.primary1,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              percentage,
              style: TextStyle(
                color: Colors.white,
                fontSize: percentageFontSize,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ],
    );
  }
}
