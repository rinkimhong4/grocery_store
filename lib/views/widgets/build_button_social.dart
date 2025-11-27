import 'package:flutter/material.dart';
import 'package:grocery_store/configs/theme/theme_style.dart';

class BuildButtonSocial extends StatelessWidget {
  const BuildButtonSocial({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
  });

  final VoidCallback onPressed;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              alignment: Alignment.center,
              elevation: 0,
              minimumSize: const Size(double.infinity, 58),
              backgroundColor: Colors.grey[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: Colors.black54, size: 24),
                const SizedBox(width: 10),
                Text(title, style: AppTextStyle.bold14(color: Colors.black54)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
