import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'home_Screen/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
    );
  }
}
