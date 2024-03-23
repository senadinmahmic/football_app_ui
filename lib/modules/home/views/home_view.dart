import 'package:flutter/material.dart';
import 'package:football_app_ui/modules/home/widgets/home_app_bar.dart';
import 'package:football_app_ui/modules/home/widgets/rising_stars_list.dart';
import 'package:get/get.dart';

import 'package:football_app_ui/widgets/backgroundimage.dart';
import 'package:football_app_ui/modules/home/widgets/hot_topics_list.dart';
import 'package:football_app_ui/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            children: [
              HomeAppBar(),
              HotTopicsList(),
              RisingStarsList(),
            ],
          ),
        ],
      ),
    );
  }
}
