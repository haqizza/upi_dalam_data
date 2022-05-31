import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';



class TabNavigation extends StatefulWidget {
  const TabNavigation({Key? key,}) : super(key: key);


  @override
  State<TabNavigation> createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: const Text(''),
        appBar: AppBar(),
        widgets: const <Widget>[Icon(Icons.abc_rounded)],
        isLeading: false,
        leading: Image.asset(
          'images/logoUPI_32.png',
          // fit: BoxFit.fitHeight,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFFF0404),
        unselectedItemColor: const Color(0xff000000),
        showSelectedLabels: false,
        showUnselectedLabels: false,
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
      ),
    );
  }
}
