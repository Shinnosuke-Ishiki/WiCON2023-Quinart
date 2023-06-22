import 'package:flutter/material.dart';

import 'package:map_app/view/drawer/staff/custom_drawer_health.dart';

class HealthCheck1 extends StatelessWidget {
  const HealthCheck1({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'health check kuina1',
      home: HealthCheck1Screen(),
    );
  }
}

class HealthCheck1Screen extends StatelessWidget {
  const HealthCheck1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('クイナ1'),
        ),
        drawer: const CustomDrawerHealth());
  }
}
