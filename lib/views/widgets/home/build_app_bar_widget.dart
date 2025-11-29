import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/configs/theme/theme_style.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      title: const Text(
        "Daily\nGrocery Food",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: AppColors.textDark,
        ),
      ),
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Container(
          height: double.infinity,
          width: 55,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: AppColors.greyBlue.withAlpha(70)),
          ),
          child: IconButton(
            onPressed: () {
              //
            },
            icon: const Icon(
              CupertinoIcons.search,
              size: 28,
              color: AppColors.textDark,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
