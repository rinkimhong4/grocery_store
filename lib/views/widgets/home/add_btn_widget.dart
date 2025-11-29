import 'package:flutter/material.dart';
import 'package:grocery_store/configs/theme/theme_style.dart';

class AddBtnWidget extends StatelessWidget {
  const AddBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        // shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        minimumSize: const Size(38, 38),
        backgroundColor: AppColors.secondaryOrange,
        foregroundColor: Colors.white,
      ),
      child: Icon(Icons.add),
    );
  }
}
