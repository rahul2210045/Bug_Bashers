import 'package:bug_basher/views/screens/Home.dart';
import 'package:bug_basher/views/screens/cards.dart';
import 'package:bug_basher/views/screens/education.dart';
import 'package:bug_basher/views/screens/features.dart';
import 'package:bug_basher/views/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Nav> {
  int _index = 0;
  final screens = [const home(), Cards(), Financial_Education(), const profile()];
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home_outlined,
        size: 24,
        color: Color.fromARGB(255, 36, 107, 253),
      ),
      const Icon(
        Icons.wallet,
        size: 24,
        color: Color.fromARGB(255, 36, 107, 253),
      ),
      const Icon(
        Icons.book_online_rounded,
        size: 24,
        color: Color.fromARGB(255, 36, 107, 253),
      ),
      const Icon(
        Icons.person_outlined,
        size: 24,
        color: Color.fromARGB(255, 36, 107, 253),
      ),
    ];
    if (_index < 0) {
      _index = 0;
    } else if (_index >= screens.length) {
      _index = screens.length - 1;
    }
    return Container(
        color: const Color.fromARGB(255, 54, 54, 54),
        child: SafeArea(
            top: false,
            child: ClipRect(
                child: Scaffold(
                    backgroundColor: Colors.white,
                    extendBody: true,
                    extendBodyBehindAppBar: true,
                    body: screens[_index],
                    floatingActionButton: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 36, 107, 253),
                      ),
                      height: 65,
                      width: 65,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'QR');
                        },
                        // backgroundColor: const Color.fromARGB(255, 77, 78, 237),
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        child: const Icon(
                          Icons.qr_code,
                          size: 26,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    floatingActionButtonLocation: FloatingActionButtonLocation
                        .centerDocked, // Adjust the location as needed
                    bottomNavigationBar: CurvedNavigationBar(
                      key: navigationKey,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      buttonBackgroundColor:
                          const Color.fromARGB(244, 244, 244, 244),
                      backgroundColor: Colors.transparent,
                      items: items,
                      animationCurve: Curves.bounceIn,
                      animationDuration: const Duration(milliseconds: 300),
                      height: 60,
                      index: _index,
                      onTap: (value) {
                        setState(() {
                          _index = value;
                        });
                      },
                    )))));
  }
}
