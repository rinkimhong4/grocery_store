// // providers.dart

// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class ProductModel {
//   final String name;
//   final String category;

//   ProductModel({required this.name, required this.category});
// }

// final productListProvider = Provider<List<ProductModel>>((ref) {
//   return [
//     ProductModel(name: "Apple", category: "Fruits"),
//     ProductModel(name: "Banana", category: "Fruits"),
//     ProductModel(name: "Carrot", category: "Vegetables"),
//     ProductModel(name: "Milk", category: "Dairy"),
//     ProductModel(name: "Bread", category: "Bakery"),
//     ProductModel(name: "Chicken", category: "Meat"),
//     ProductModel(name: "Pepsi", category: "Beverages"),
//   ];
// });

// final selectedCategoryProvider = StateProvider<String>((ref) => "Fruits");

// final filteredProductsProvider = Provider<List<ProductModel>>((ref) {
//   final selected = ref.watch(selectedCategoryProvider);
//   final allProducts = ref.watch(productListProvider);

//   return allProducts.where((item) => item.category == selected).toList();
// });
