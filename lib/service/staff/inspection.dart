import 'package:flutter/material.dart';

import 'package:map_app/view/drawer/staff/custom_drawer_inspection.dart';

class Inspection extends StatelessWidget {
  const Inspection({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'inspection',
      home: InspectionScreen(),
    );
  }
}

class InspectionScreen extends StatelessWidget {
  const InspectionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('クイナート点検管理'),
        ),
        drawer: const CustomDrawerInspection());
  }
}
