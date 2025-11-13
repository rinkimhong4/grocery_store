import 'package:get/get.dart';
import 'package:grocery_store/configs/routes/app_routes.dart';
import 'package:grocery_store/views/home_screen.dart';

class AppRouting {
  static final route = RouteView.values.map((e) {
    switch (e) {
      case RouteView.home:
        return GetPage(
          name: "/",
          page: () => const HomeScreen(),
          transition: Transition.noTransition,
        );
      // case RouteView.splash:
      //   return GetPage(
      //     name: "/${e.name}",
      //     page: () => const SplashScreen(),
      //     // binding: NotificationBinding(),
      //   );
    }
  }).toList();
}
