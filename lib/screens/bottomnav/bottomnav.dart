import 'package:flutter/material.dart';
import 'package:instagram/screens/bottomnav/heartscreen.dart';
import 'package:instagram/screens/bottomnav/homescreen.dart';
import 'package:instagram/screens/bottomnav/postscreen.dart';
import 'package:instagram/screens/bottomnav/profilescreen.dart';
import 'package:instagram/screens/bottomnav/searchscreen.dart';
// import 'package:instagram/widgets/uihelper.dart';

class Bottomnav extends StatefulWidget {
  // const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    Searchscreen(),
    Postscreen(),
    Heartscreen(),
    Profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.post_add), label: "Post"),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken),
            label: "Heart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: "Profile",
          ),
        ],
      ),
      body: IndexedStack(index: currentIndex, children: pages),
    );
  }
}
