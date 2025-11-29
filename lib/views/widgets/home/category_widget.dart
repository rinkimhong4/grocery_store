import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grocery_store/configs/theme/theme_style.dart';

class CategoryWidget extends ConsumerWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selected = 0;
    List<String> categories = [
      'Fruits',
      'Vegetables',
      'Dairy',
      'Bakery',
      'Meat',
      'Beverages',
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: [
            for (int index = 0; index < categories.length; index++) ...[
              GestureDetector(
                onTap: () {
                  //
                },
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: selected == categories[index]
                        ? Colors.white
                        : AppColors.darkColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: TextStyle(
                        color:
                            //  selected == categories[index]?
                            Colors.white,
                        // : AppColors.darkIconColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              if (index < categories.length - 1) const SizedBox(width: 10),
            ],
          ],
        ),
      ),
    );
  }
}
