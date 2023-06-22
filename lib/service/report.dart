import 'package:flutter/material.dart';

import 'package:map_app/view/drawer/custom_drawer_report.dart';

class Report extends StatelessWidget {
  const Report({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'report',
      home: ReportScreen(),
    );
  }
}

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('緊急連絡'),
        ),
        body: Center(
          child: OutlinedButton(
              onPressed: () {
                print('pushed');
              },
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 30),
                foregroundColor: Colors.red,
                fixedSize: const Size(200, 100),
                alignment: Alignment.center,
              ),
              child: const Text("緊急連絡")),
        ),
        drawer: const CustomDrawerReport());
  }
}
