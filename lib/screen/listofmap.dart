import 'package:flutter/material.dart';

class ProductFeaturesScreen1 extends StatelessWidget {
  final List<Map<String, String>> products = List.generate(
    10,
        (index) => {
      'title': 'Product Title $index',
      'description': 'Detailed product description $index',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Features'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              products[index]['title']!,
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(products[index]['description']!),
            trailing: Icon(Icons.favorite_border),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
        ],
      ),
    );
  }
}