import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductDetailsPage(),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Padding (
        padding:EdgeInsets.all(16.0),
child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Product Name',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                backgroundColor: Color.fromARGB(255, 153, 18, 63),
              ),
            ),
      const SizedBox(height: 16),
       Image.network(
              'https://placekitten.com/200/200', // Replace with your product image URL
              width: 150,
              height: 150,
            ),
             const SizedBox(height: 16),
             const Text(
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
             ),
             const SizedBox(height: 16),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BuyNowPage()),
                );
              },
              child: const Text('Buy Now'),
            ),
          ];
      ),
    );
    );
  }
}
class BuyNowPage extends StatelessWidget {
  const BuyNowPage({super.key});
  
  }