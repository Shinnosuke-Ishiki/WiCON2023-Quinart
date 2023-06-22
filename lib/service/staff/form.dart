import 'package:flutter/material.dart';

import 'package:map_app/service/staff/staff_main.dart';
import 'package:map_app/view/drawer/custom_drawer_none.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login to staff page',
      home: FormScreen(),
    );
  }
}

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final passwordFocusNode = FocusNode();

    return Scaffold(
        appBar: AppBar(
          title: const Text('スタッフ情報入力'),
        ),
        body: Form(
            child: Center(
                child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'スタッフID',
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(passwordFocusNode);
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: TextFormField(
                focusNode: passwordFocusNode,
                decoration: const InputDecoration(
                  labelText: 'パスワード',
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const StaffMain()));
              },
              child: const Text('スタッフ専用ページへ'),
            )
          ],
        ))),
        drawer: const CustomDrawerNone());
  }
}
