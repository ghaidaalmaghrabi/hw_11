import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({
    Key? key,
  }) : super(key: key);
  // final Cart cartItem;

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5F7F9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: ItemInCart(),
        ),
      ),
    );
  }
}

class ItemInCart extends StatefulWidget {
  const ItemInCart({
    Key? key,
  }) : super(key: key);

  @override
  State<ItemInCart> createState() => _ItemInCartState();
}

class _ItemInCartState extends State<ItemInCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Column(
              children: const [
                Text(
                  'طارد النمل طبيعي من زيوت عشبية',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '27 ر.س',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            const Image(
              image: NetworkImage('https://cdn.salla.sa/Aedxd/FU4D5KgCtf7LLUfFefLeVpCqshDlYRmEapMdjogR.jpg'),
              height: 130,
              width: 130,
            ),
          ],
        ),
      ),
    );
  }
}
