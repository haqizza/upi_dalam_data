import 'package:flutter/material.dart';

class TabNavigation extends StatelessWidget {
  final Function onTapFunction;

  const TabNavigation({
    Key? key,
    required this.onTapFunction
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: const Color(0xFFFF0404),
        unselectedItemColor: const Color(0xff000000),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTapFunction(),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insights_outlined),
            label: 'Dashboard'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_quilt_outlined),
            label: 'Highlight'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notifications'
          ),
        ],
      );
  }
}