import 'dart:io';
import 'package:flutter/material.dart';

import 'data.dart';
import 'main.dart';
import 'account.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
         padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(getAccountNameData()),
            accountEmail: Text(getAccountEmailData()),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://i.stack.imgur.com/l60Hf.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Account'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyAccount()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.browse_gallery_outlined),
            title: const Text('Browse'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorites'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyFavorites()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('History'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHistory()),
            ),
          ),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () => exit(0),
          ),
        ],
      ),
    );
  }
}
