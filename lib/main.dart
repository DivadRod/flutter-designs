import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: _buildColumn(),
    );
  }

  Column _buildColumn() {
    return const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('Hello World'),
      Text('Hello World'),
    ]);
  }
}
