import 'package:flutter/material.dart';
import 'package:untitled/component.dart';

class SecondPage extends StatelessWidget {
  final List<Product> cartItems;

  const SecondPage({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Cart / Details Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      // 2. Check if the list is empty, otherwise show the ListView

      body: cartItems.isEmpty
          ? const Center(
              child: Text(
                "Your cart is empty!",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final product = cartItems[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  elevation: 4,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurpleAccent.withValues(
                        alpha: 0.1,
                      ),
                      child: Icon(product.icon, color: Colors.deepPurple),
                    ),
                    title: Text(product.name),
                    subtitle: Text("\$${product.price}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star, color: Colors.amber),
                        const SizedBox(width: 5),
                        Text(product.rate),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
