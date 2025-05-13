import 'package:flutter/material.dart';
import 'package:flutter_learn/week1/steate/welcome/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hwa d1',
      home: WelcomeView(),
    );
  }
}
