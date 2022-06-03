import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:upi_dalam_data/screens/homepage.dart';
import 'package:upi_dalam_data/screens/notifications.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  int idx = 0;
  String topbarTitle = "";
  
  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  void setTitle(String title) {
    setState(() {
      topbarTitle = title;
    });
    log('title' + topbarTitle + ' ' + title, name: 'title.test');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UPI Dalam Data',
      home: Scaffold(
        appBar: TopBar(
          title: topbarTitle,
          appBar: AppBar(),
          isLogo: true,
        ),
        body: tabSelect(idx),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          selectedItemColor: const Color(0xFFFF0404),
          unselectedItemColor: const Color(0xff000000),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onItemTap,
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
              label: 'Notifications',
            ),
          ],
        ),
      ),      
    );
  }

  tabSelect(int idx) {
    switch (idx) {
      case 0: {
        return HomePage(setTitle: setTitle);
      }
      case 3: {
        return Notifications(setTitle: setTitle);
      }
    }
  }
}