import 'package:flutter/material.dart';

import 'package:map_app/service/staff/kuina_health/kuina1.dart';
import 'package:map_app/view/drawer/staff/custom_drawer_health.dart';

class HealthCheck extends StatelessWidget {
  const HealthCheck({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'health check',
      home: HealthCheckScreen(),
    );
  }
}

class HealthCheckScreen extends StatelessWidget {
  const HealthCheckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('健康状態管理'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('クイナ1'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HealthCheck1(),
                  ));
            },
          ),
          ListTile(
            title: const Text('クイナ2'),
            onTap: () {
              print('クイナ2');
            },
          ),
          ListTile(
            title: const Text('クイナ3'),
            onTap: () {
              print('クイナ3');
            },
          ),
          ListTile(
            title: const Text('クイナ4'),
            onTap: () {
              print('クイナ4');
            },
          ),
          ListTile(
            title: const Text('クイナ5'),
            onTap: () {
              print('クイナ5');
            },
          ),
          ListTile(
            title: const Text('クイナ6'),
            onTap: () {
              print('クイナ6');
            },
          ),
          ListTile(
            title: const Text('クイナ7'),
            onTap: () {
              print('クイナ7');
            },
          ),
          ListTile(
            title: const Text('クイナ8'),
            onTap: () {
              print('クイナ8');
            },
          ),
          ListTile(
            title: const Text('クイナ9'),
            onTap: () {
              print('クイナ9');
            },
          ),
          ListTile(
            title: const Text('クイナ10'),
            onTap: () {
              print('クイナ10');
            },
          ),
        ],
      ),
      drawer: const CustomDrawerHealth(),
    );
  }
}
