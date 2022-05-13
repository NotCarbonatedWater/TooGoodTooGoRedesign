import 'package:flutter/material.dart';

import 'data.dart';
import 'navbar.dart';

Image icon = Image.asset("res/restaurant.png");

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Page',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Restaurant Page'),
          ),
          drawer: const NavBar(),
          // body: Image.asset("res/restaurant.png"),
          body: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("res/restaurant.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                getPlaceHolderText(),
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ])),
    );
  }
}
