import 'package:flutter/material.dart';
import 'package:student_forum/screens/pages/add_post.dart';
import 'package:student_forum/screens/pages/home_page.dart';
import 'package:student_forum/screens/pages/profile.dart';
import 'package:student_forum/screens/pages/search.dart';
import 'package:student_forum/utilities/constant.dart';

import 'pages/notifications.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const home = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = [
    Homepage(),
    Search(),
    AddPost(),
    Notifications(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: kMainBodyColor,
        selectedItemColor: kMainBodyColor,
        iconSize: 27,
        elevation: 10,
        currentIndex: selectedIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: kSecondaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: kSecondaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Post',
            backgroundColor: kSecondaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
            backgroundColor: kSecondaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: kSecondaryColor,
          ),
        ],
      ),
    );
  }
}
