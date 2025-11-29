import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grocery_store/configs/theme/theme_style.dart';
import 'package:grocery_store/views/home_screen.dart';
import 'package:grocery_store/views/more_screen.dart';
import 'package:grocery_store/views/my_cart_screen.dart';
import 'package:grocery_store/views/order_screen.dart';

import 'nav_provider.dart';

class BottomNavigationWidget extends ConsumerWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navIndexProvider);

    final screens = [
      const HomeScreen(),
      const OrderScreen(),
      const MyCartScreen(),
      const MoreScreen(),
    ];

    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          ref.read(navIndexProvider.notifier).state = value;
        },
        selectedItemColor: AppColors.darkColor,
        unselectedItemColor: AppColors.darkColor.withValues(alpha: 0.7),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.cardShadow,
            icon: Icon(Icons.home_rounded, size: 24),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded, size: 24),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded, size: 24),
            label: "My Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded, size: 24),
            label: "More",
          ),
        ],
      ),
    );
  }
}
