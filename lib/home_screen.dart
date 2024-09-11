import 'package:flutter/material.dart';
import 'package:movies/bottomnavigationbar/browes_tap.dart';
import 'package:movies/bottomnavigationbar/home/home_tap.dart';
import 'package:movies/bottomnavigationbar/search_tap.dart';
import 'package:movies/bottomnavigationbar/watch_list_tap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> taps = const [
    HomeTap(),
    SearchTap(),
    BrowesTap(),
    WatchListTap(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: taps[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 32,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 32,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon material-movie.png'),
              size: 32,
            ),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon ionic-md-bookmarks.png'),
              size: 32,
            ),
            label: 'Watch List',
          ),
        ],
      ),
    );
  }
}
