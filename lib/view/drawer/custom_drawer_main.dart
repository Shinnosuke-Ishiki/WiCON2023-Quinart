import 'package:flutter/material.dart';

import 'package:map_app/main.dart';
import 'package:map_app/service/report.dart';
import 'package:map_app/service/staff/form.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
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
            '\n\nその他の機能',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        ListTile(
          title: const Text('ホーム'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyApp()));
          },
        ),
        ListTile(
          title: const Text('緊急連絡(ロードキル発見)',
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
