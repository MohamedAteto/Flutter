import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/details.dart';
import 'package:untitled/homepage.dart';

class Product {
  final String name;
  final String price;
  final String rate;
  final IconData icon;

  Product({
    required this.name,
    required this.price,
    required this.rate,
    required this.icon,
  });
}

class MyWidget extends StatefulWidget {
  final Product product;
  const MyWidget({required this.product, super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool get isInCart => Cart.contains(widget.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Details(product: widget.product),
        ),
      ),

      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(10),
        shadowColor: Colors.black,

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(widget.product.icon, color: Colors.teal, size: 70),
              SizedBox(height: 5),
              Text(
                widget.product.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "\$${widget.product.price}",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isInCart ? Colors.red : Colors.teal,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    if (!isInCart) {
                      Cart.add(widget.product);
                    } else {
                      Cart.remove(widget.product);
                    }
                  });
                },
                child: Text(isInCart ? "Remove" : "Add To Cart"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
