import 'package:flutter/material.dart';
import 'package:glee/screens/home.dart';
import 'package:glee/screens/playlist.dart';
import 'package:glee/screens/profile.dart';
import 'package:glee/screens/settings.dart';

class Nav extends StatefulWidget {
  const Nav({super.key, this.index});

  final int? index;

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentIndex = 0;
  List pages = [
    const Home(),
    const Playlist(),
    const Profile(),
    const Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Scaffold(
      body: pages[widget.index ?? currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        elevation: 0,
        backgroundColor: color.surface,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          size: 30,
          color: color.onPrimary,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 30,
          color: Color.fromRGBO(205, 208, 227, 1)
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_filled),
            label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.audiotrack_outlined),
              activeIcon: Icon(Icons.audiotrack),
              label: 'Playlist'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined),
              activeIcon: Icon(Icons.people_alt),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
      ),
    );
  }
}
