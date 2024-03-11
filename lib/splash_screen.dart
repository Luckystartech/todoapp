import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Center(
            child: Image.asset(
              'images/illustrator_1.png',
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }
}
