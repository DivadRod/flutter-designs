import 'package:flutter/material.dart';

class BaseDesignScreen extends StatelessWidget {
  const BaseDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/god_luffy.png')),
      ),
    );
  }
}
