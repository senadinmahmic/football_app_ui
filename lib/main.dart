import 'package:flutter/material.dart';
import 'package:football_app_ui/config/app_colors.dart';
import 'package:football_app_ui/modules/home/bindings/home_bindings.dart';
import 'package:football_app_ui/routes/app_pages.dart';
import 'package:football_app_ui/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background1,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
      ),
      title: 'Football App UI',
      getPages: AppPages.routes,
      initialRoute: Routes.HOME,
      initialBinding: HomeBindings(),
    );
  }
}
