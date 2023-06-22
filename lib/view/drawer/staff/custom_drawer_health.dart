import 'package:flutter/material.dart';

import 'package:map_app/main.dart';
import 'package:map_app/service/staff/staff_main.dart';
import 'package:map_app/service/staff/staff_appearance_info.dart';
import 'package:map_app/service/staff/staff_attention.dart';
import 'package:map_app/service/staff/health_check.dart';
import 'package:map_app/service/staff/sphere_of_influence.dart';
import 'package:map_app/service/staff/inspection.dart';

class CustomDrawerHealth extends StatelessWidget {
  const CustomDrawerHealth({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'その他の機能',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            title: const Text('    メイン画面(現在地の表示)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StaffMain()),
              );
            },
          ),
          ListTile(
            title: const Text('    出現情報'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StaffAppearanceInfo(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('    出現注意区域'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StaffAttention(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('▶ 健康状態管理'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HealthCheck(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('    縄張りの確認'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SphereOfInfluence(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('    クイナート点検管理'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Inspection(),
                ),
              );
            },
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
              );
            },
            child: const Text('← 一般用に戻る'),
          ),
        ],
      ),
    );
  }
}
