import 'package:flutter/material.dart';
import 'package:hw_11/pages/cart.dart';
import 'package:hw_11/pages/data.dart';

class products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final product in Data.products) ProductCard(product: product),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
            ),
            const SectionCard(
                imageUrl: 'https://www.albayan.ae/polopoly_fs/1.3916749.1595202489!/image/image.jpg',
                sectionName: 'بذور خضار'),
            const SizedBox(
              height: 8,
            ),
            const SectionCard(
                imageUrl: 'https://cdn.al-ain.com/lg/images/2021/2/23/78-001503-fruit-world-durian-snake_700x400.jpg',
                sectionName: 'بذور فواكه'),
          ],
        ),
      ),
    );
  }
}

class SectionCard extends StatelessWidget {
  const SectionCard({Key? key, required this.imageUrl, required this.sectionName}) : super(key: key);
  final String imageUrl;
  final String sectionName;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: NetworkImage(imageUrl),
        ),
        Center(
          child: Container(
            color: Colors.white,
            child: Text(
              sectionName,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final StoreProduct product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              child: FittedBox(
                child: Image(
                  image: NetworkImage(widget.product.imageUrl),
                  height: 400,
                  width: 300,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              widget.product.productDescription,
              style: const TextStyle(fontSize: 25),
            ),
            Row(
              children: [
                Text(
                  widget.product.price,
                  style: const TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  width: 32,
                ),
                InkWell(
                  onTap: () {
                    Cart.cartItems.add(widget.product);
                    final navigator = Navigator.of(context);
                    navigator.push(
                      MaterialPageRoute(
                        builder: (context) => const cart(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.add_shopping_cart,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
