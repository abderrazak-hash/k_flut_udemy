import 'package:flutter/material.dart';
import 'package:k_flut_udemy/screens/loading_screen.dart';

void main() {
  runApp(const FUdemyApp());
}

class FUdemyApp extends StatelessWidget {
  const FUdemyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoadingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
