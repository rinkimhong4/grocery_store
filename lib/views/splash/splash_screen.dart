import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/configs/theme/theme_style.dart';
import 'package:grocery_store/views/splash/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.white,
      splash: const SplashContent(),
      nextScreen: const OnboardingScreen(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 1000,
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Column(
        children: [
          Text(
            'G',
            style: GoogleFonts.poppins(
              color: AppColors.primaryDark,
              fontSize: 90,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Grocery Store',
            style: TextStyle(
              color: AppColors.primaryDark,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
