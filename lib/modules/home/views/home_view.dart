import 'package:flutter/material.dart';
import 'package:football_app_ui/modules/home/widgets/hot_topics_list.dart';
import 'package:get/get.dart';

import 'package:football_app_ui/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        centerTitle: true,
        title: Transform(
          transform:
              Matrix4.skewX(-0.2), // Change this value to skew more or less
          child: const Text(
            'FULLBALL.CO',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const Column(
        children: [
          HotTopicsList(),
        ],
      ),
    );
  }
}
