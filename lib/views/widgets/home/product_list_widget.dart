import 'package:flutter/material.dart';
import 'package:grocery_store/configs/theme/theme_style.dart';
import 'package:grocery_store/views/widgets/home/add_btn_widget.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _RowHeader(),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemCount: _products.length,
          itemBuilder: (BuildContext context, int index) {
            final product = _products[index];
            return _buildProductCard(product);
          },
        ),
      ],
    );
  }

  static const List<Map<String, String>> _products = [
    {
      'name': 'Apple',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfarAFccmDz22ZlfrL_vWW9Rxja-7INLgIRA&s',
      'price': '\$2.00',
    },
    {
      'name': 'Banana',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfarAFccmDz22ZlfrL_vWW9Rxja-7INLgIRA&s',
      'price': '\$1.50',
    },
    {
      'name': 'Orange',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfarAFccmDz22ZlfrL_vWW9Rxja-7INLgIRA&s',
      'price': '\$2.50',
    },
    {
      'name': 'Grapes',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfarAFccmDz22ZlfrL_vWW9Rxja-7INLgIRA&s',
      'price': '\$3.00',
    },
  ];

  Widget _buildProductCard(Map<String, String> product) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          debugPrint('Tapped on ${product['name']}');
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    product['image'] ?? '',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                product['name'] ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        product['price'] ?? '',
                        style: const TextStyle(
                          fontSize: 18,
                          color: AppColors.secondaryOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "/kg",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  AddBtnWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RowHeader extends StatelessWidget {
  const _RowHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Popular Products',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text('see all', style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }
}
