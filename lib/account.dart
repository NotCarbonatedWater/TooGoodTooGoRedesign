import 'package:flutter/material.dart';
import 'package:too_good_to_go/data.dart';

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
            body: ListView(
              children:  <Widget>[

                Card(
                  child: ListTile(
                    title: Text('Account Name: ' + getAccountNameData()),
                    trailing: const Icon(Icons.more_vert),
                  ),
                ),

                Card(
                  child: ListTile(
                    title: Text('Account Email: ' + getAccountEmailData()),
                    trailing: const Icon(Icons.more_vert),
                  ),
                ),

                Card(
                  child: ListTile(
                    title: Text('Address: ' + getAddress()),
                    trailing: const Icon(Icons.more_vert),
                  ),
                ),

                Card(
                  child: ListTile(
                    title: Text('Payment: ' + getCard()),
                    trailing: const Icon(Icons.more_vert),
                  ),
                ),


              ],
            )));
  }
}
