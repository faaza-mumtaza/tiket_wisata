import 'package:flutter/material.dart';
import 'package:tiket_wisata/data/dummy_data.dart';
import 'package:tiket_wisata/pages/order_detail_page.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order')),
      body: ListView.builder(
        itemCount: dummyProducts.length,
        itemBuilder: (ctx, index) {
          final product = dummyProducts[index];
          return ListTile(
            leading: Image.network(product.imageUrl),
            title: Text(product.name),
            subtitle: Text('\$${product.price}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderDetailPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}