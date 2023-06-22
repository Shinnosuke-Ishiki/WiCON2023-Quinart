import 'package:flutter/material.dart';

import 'package:map_app/view/drawer/staff/custom_drawer_influence.dart';

class SphereOfInfluence extends StatelessWidget {
  const SphereOfInfluence({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sphere of influence',
      home: InfluenceScreen(),
    );
  }
}

class InfluenceScreen extends StatelessWidget {
  const InfluenceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('縄張りの確認'),
        ),
        drawer: const CustomDrawerInfluence());
  }
}
