import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Lottie.asset(
        'assets/animations/pokeball-loading.json',
        fit: BoxFit.contain,
      ),
    );
  }
}
