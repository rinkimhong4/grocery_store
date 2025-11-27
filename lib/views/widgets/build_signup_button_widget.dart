import 'package:flutter/material.dart';
import 'package:grocery_store/configs/theme/theme_style.dart';

class BuildSignupButtonWidget extends StatelessWidget {
  const BuildSignupButtonWidget({super.key, this.onPressed, this.title});

  final VoidCallback? onPressed;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 58),
          backgroundColor: AppColors.darkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          title ?? 'Sign Up',
          style: AppTextStyle.bold14(color: AppColors.white),
        ),
      ),
    );
  }
}
