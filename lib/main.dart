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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
              'Product Name',
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
          ]),
        ));
  }
}

class BuyNowPage extends StatelessWidget {
  const BuyNowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy Now'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Choose Payment Method',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PaymentMethodButton('BKash', 'images/bkash.png'),
                PaymentMethodButton('Rocket', 'images/rocket.png'),
                PaymentMethodButton('Visa', 'images/visacard.png'),
                PaymentMethodButton('Mastercard', 'images/mastercard.jpg'),
              ],
            ),
            const SizedBox(height: 16),
            DropdownButton<String>(
              items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle dropdown value change
              },
              hint: const Text('Select an option'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodButton extends StatelessWidget {
  final String name;
  final String imagePath;

  const PaymentMethodButton(this.name, this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 50,
          height: 50,
        ),
        const SizedBox(height: 8),
        Text(name),
      ],
    );
  }
}
