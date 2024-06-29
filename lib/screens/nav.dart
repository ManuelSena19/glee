import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: const Color.fromRGBO(205, 208, 227, 1),
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: color.onPrimary,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/playlist.svg',
              color: const Color.fromRGBO(205, 208, 227, 1),
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/playlist_filled.svg',
              color: color.onPrimary,
            ),
            label: 'Playlist',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile.svg',
              color: const Color.fromRGBO(205, 208, 227, 1),
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/profile.svg',
              color: color.onPrimary,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/settings.svg',
              color: const Color.fromRGBO(205, 208, 227, 1),
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/settings.svg',
              color: color.onPrimary,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
