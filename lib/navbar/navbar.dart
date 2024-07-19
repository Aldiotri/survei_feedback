import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:survei_feedback/pages/angket_page.dart';
import 'package:survei_feedback/pages/hasil_page.dart';
import 'package:survei_feedback/pages/home_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _bottomindex = 0;
  List<Widget> pages = const [
    HomePage(),
    AngketPage(),
    hasil_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_bottomindex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            _bottomindex = index;
          });
        },
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.blue,
        color: Colors.blue,
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.add, size: 30, color: Colors.white),
          Icon(Icons.message, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}
