import 'package:flutter/material.dart';

class ProductFeaturesScreen extends StatefulWidget {
  @override
  ProductFeaturesScreenState createState() => ProductFeaturesScreenState();
}

class ProductFeaturesScreenState extends State<ProductFeaturesScreen> {
  final List<Map<String, String>> products = [
    {
      'title': 'Product Title 0',
      'description': 'Detailed product description 0',
    },
    {
      'title': 'Product Title 1',
      'description': 'Detailed product description 1',
    },
    {
      'title': 'Product Title 2',
      'description': 'Detailed product description 2',
    },
    {
      'title': 'Product Title 3',
      'description': 'Detailed product description 3',
    },
    {
      'title': 'Product Title 4',
      'description': 'Detailed product description 4',
    },
    {
      'title': 'Product Title 5',
      'description': 'Detailed product description 5',
    },
    {
      'title': 'Product Title 6',
      'description': 'Detailed product description 6',
    },
    {
      'title': 'Product Title 7',
      'description': 'Detailed product description 7',
    },
    {
      'title': 'Product Title 8',
      'description': 'Detailed product description 8',
    },
    {
      'title': 'Product Title 9',
      'description': 'Detailed product description 9',
    },
  ];

  List<Map<String, String>> favorites = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        bool isFavorite = favorites.contains(products[index]);

        return ListTile(
          title: Text(
            products[index]['title']!,
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(products[index]['description']!),
          trailing: IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : null,
            ),
            onPressed: () {
              setState(() {
                if (isFavorite) {
                  favorites.remove(products[index]);
                } else {
                  favorites.add(products[index]);
                }
              });
            },
          ),
        );
      },
    );
  }
}
