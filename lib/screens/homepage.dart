import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key,}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
              'Homepage',
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
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}
