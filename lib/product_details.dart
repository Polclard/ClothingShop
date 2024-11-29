import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
final Map<String, dynamic> product;

ProductDetails({required this.product});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(product['name']),
      backgroundColor: Colors.teal,
    ),
    body: Container(
      padding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(product['image'], width: 500, height: 500, alignment: Alignment.center),
          SizedBox(height: 16.0),
          Text(
            product['name'],
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            product['description'],
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8.0),
          Text(
            'Цена: ${product['price']}',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
}