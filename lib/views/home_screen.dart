import 'package:flutter/material.dart';
import 'package:grocery_store/views/widgets/home/build_app_bar_widget.dart';
import 'package:grocery_store/views/widgets/home/category_widget.dart';
import 'package:grocery_store/views/widgets/home/product_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const BuildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          CategoryWidget(),
          SizedBox(height: 16),
          ProductListWidget(),
        ],
      ),
    );
  }
}
