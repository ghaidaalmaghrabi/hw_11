import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7F9),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.account_circle,
              size: 128,
            ),
            const SizedBox(
              height: 32,
            ),
            const Positioned(
              left: 0,
              child: Text(
                'مرحبا بك ',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Text(
              'غيداء المغربي ',
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'gid@gmail.com',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
