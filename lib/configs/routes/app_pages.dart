import 'package:get/get.dart';
import 'package:grocery_store/configs/routes/app_routes.dart';
import 'package:grocery_store/views/auth/sign_in_screen.dart';
import 'package:grocery_store/views/auth/sign_up_screen.dart';
import 'package:grocery_store/views/home_screen.dart';
import 'package:grocery_store/views/splash/onboarding_screen.dart';
import 'package:grocery_store/views/splash/splash_screen.dart';

class AppRouting {
  static final route = RouteView.values.map((e) {
    switch (e) {
      case RouteView.home:
        return GetPage(
          name: "/",
          page: () => const HomeScreen(),
          // transition: Transition.noTransition,
        );
      case RouteView.splash:
        return GetPage(
          name: "/${e.name}",
          page: () => const SplashScreen(),
          // binding: NotificationBinding(),
        );
      case RouteView.onboarding:
        return GetPage(
          name: "/${e.name}",
          page: () => const OnboardingScreen(),
          // binding: NotificationBinding(),
        );
      case RouteView.signin:
        return GetPage(
          name: "/${e.name}",
          page: () => const SignInScreen(),
          // binding: NotificationBinding(),
        );
      case RouteView.signup:
        return GetPage(
          name: "/${e.name}",
          page: () => const SignUpScreen(),
          // binding: NotificationBinding(),
        );
    }
  }).toList();
}
