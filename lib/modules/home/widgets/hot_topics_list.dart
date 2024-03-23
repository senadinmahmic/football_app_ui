import 'package:flutter/material.dart';
import 'package:football_app_ui/config/app_colors.dart';
import 'package:football_app_ui/data/dummy_data.dart';
import 'package:get/get.dart';

import 'package:football_app_ui/modules/home/controllers/home_controller.dart';

class HotTopicsList extends GetView<HomeController> {
  const HotTopicsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          child: Transform(
            transform: Matrix4.skewX(-0.2),
            child: const Text(
              'HOT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 190,
          child: PageView.builder(
            controller: PageController(
              viewportFraction: 0.91,
              initialPage: 0,
            ),
            pageSnapping: true,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                child: Center(
                  child: Obx(
                    () => Center(
                      child: Stack(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height:
                                controller.currentHotTopicsPage.value == index
                                    ? 190
                                    : 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[400],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                hotTopicsList[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height:
                                controller.currentHotTopicsPage.value == index
                                    ? 190
                                    : 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 10,
                              ),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      hotTopicsList[index].title,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      hotTopicsList[index].subtitle,
                                      style: TextStyle(
                                        color: Colors.grey[300],
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            onPageChanged: (int page) {
              controller.currentHotTopicsPage.value = page;
            },
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 12,
            ),
            child: SizedBox(
              height: 6,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Obx(
                        () => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color:
                                controller.currentHotTopicsPage.value == index
                                    ? AppColors.primary1
                                    : Colors.grey[400],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 6,
                          width: controller.currentHotTopicsPage.value == index
                              ? 25
                              : 6,
                        ),
                      ),
                      const SizedBox(width: 5),
                    ],
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
