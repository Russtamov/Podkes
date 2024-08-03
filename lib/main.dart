import 'package:flutter/material.dart';
import 'package:podkes_demo/feature/view/get_started/get_started_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Podkest App',
      home: GetStartedPage(),
    );
  }
}
