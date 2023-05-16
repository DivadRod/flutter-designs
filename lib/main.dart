import 'package:designs_app/screens/basic_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'basic_design',
      routes: {'basic_design': (_) => const BaseDesignScreen()},
    );
  }
}
