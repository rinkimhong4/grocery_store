import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_store/configs/routes/app_pages.dart';
import 'package:grocery_store/configs/routes/app_routes.dart';
import 'package:grocery_store/configs/theme/theme_style.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      // initialRoute: RouteView.splash.name,
      initialRoute: RouteView.home.name,
      getPages: AppRouting.route,
      // home: BuildAppBar(),
    );
  }
}
