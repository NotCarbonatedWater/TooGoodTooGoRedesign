import 'package:flutter/material.dart';
import 'package:too_good_to_go/restaurantpage.dart';
import 'data.dart';
import 'navbar.dart';
import 'account.dart';
import 'restaurantpage.dart';

String icon = "res/restaurant.png";
const double boxSize = 100;

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Too Good To Go - Redesign';
    return MaterialApp(
        title: title,
        home: Scaffold(
          drawer: const NavBar(),
          appBar: AppBar(
            title: const Text(title),
          ),
          body: ListView.builder(
            shrinkWrap: true,
            itemCount: getNumOfRestaurant(),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                  leading: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: boxSize,
                      minHeight: boxSize,
                      maxWidth: boxSize,
                      maxHeight: boxSize,
                    ),
                    child: Image.asset("res/restaurant.png", fit: BoxFit.cover),
                  ),
                  title: Text(getRestaurant(index)),
                  subtitle: Text(getRestaurantDescription(index)),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RestaurantPage()),
                  ),
                ),
              );
            },
          ),
        ));
  }
}

class MyFavorites extends StatelessWidget {
  const MyFavorites({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorites',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
        ),
        drawer: const NavBar(),
      ),
    );
  }
}

class MyHistory extends StatelessWidget {
  const MyHistory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'History',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('History'),
        ),
        drawer: const NavBar(),
      ),
    );
  }
}
