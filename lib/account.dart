import 'package:flutter/material.dart';

import 'navbar.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Account',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Account'),
        ),
        drawer: const NavBar(),
      ),
    );
  }
}