import 'package:flutter/material.dart';
import 'package:hw_11/pages/cart.dart';
import 'package:hw_11/pages/products.dart';
import 'package:hw_11/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentIndex = 0;
  final List<Widget> navElements = [
    const cart(),
    products(),
    const profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'جذور',
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
        backgroundColor: Colors.white,
      ),
      body: navElements[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (var index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'السلة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'المنتجات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}
