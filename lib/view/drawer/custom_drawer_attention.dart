import 'package:flutter/material.dart';

import 'package:map_app/main.dart';
import 'package:map_app/service/appearance_info.dart';
import 'package:map_app/service/attention.dart';
import 'package:map_app/service/report.dart';
import 'package:map_app/service/staff/form.dart';

class CustomDrawerAttention extends StatelessWidget {
  const CustomDrawerAttention({super.key});
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyApp()));
          },
        ),
        ListTile(
          title: const Text('    出現情報'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AppearanceInfo()));
          },
        ),
        ListTile(
          title: const Text('▶ 出現注意区域'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Attention()));
          },
        ),
        ListTile(
          title: const Text('    緊急連絡(ロードキル発見)',
              style: TextStyle(
                color: Colors.red,
              )),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Report()));
          },
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyForm()));
            },
            child: const Text('施設職員用'))
      ],
    ));
  }
}
