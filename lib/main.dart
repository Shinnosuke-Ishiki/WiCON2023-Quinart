import 'package:flutter/material.dart';
import 'package:map_app/view/drawer/custom_drawer_main.dart';
import 'package:map_app/view/footer/footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'main page',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('クイナート'),
      ),
      drawer: const CustomDrawer(),
      body: const Footer(),
    );
  }
}
