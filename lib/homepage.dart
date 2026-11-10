import 'package:flutter/material.dart';
import 'package:untitled/component.dart' show MyWidget, Product;
import 'package:untitled/secoundpage.dart';

class HomePage extends StatefulWidget {
  new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<Product> Cart = [];

class _HomePageState extends State<HomePage> {
  final List<Product> products = [
    Product(
      name: "Smart Watch",
      price: "120.0",
      icon: Icons.watch,
      rate: "4.5",
    ),
    Product(
      name: "Headphones",
      price: "80.0",
      icon: Icons.headphones,
      rate: "4.2",
    ),
    Product(name: "Laptop", price: "950.0", icon: Icons.laptop, rate: "4.8"),
    Product(
      name: "Camera",
      price: "400.0",
      icon: Icons.camera_alt,
      rate: "4.3",
    ),
    Product(
      name: "ٍSmartPhone",
      price: "500.0",
      icon: Icons.phone_android,
      rate: "4.1",
    ),
    Product(name: "Tablet", price: "400.0", icon: Icons.tablet, rate: "4.3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text(
          "Homepage page",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          // Shopping Cart Button added to the AppBar
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(cartItems: Cart),
                ),
              ).then((_) {
                setState(() {});
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 600,
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) =>
                      MyWidget(product: products[index]),
                  itemCount: products.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
