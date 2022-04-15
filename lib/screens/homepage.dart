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
        title: const Text('Homepage',
                      style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                    
        appBar: AppBar(
        ),
        widgets: const <Widget>[Icon(Icons.abc_rounded)],
        isLeading: false,
        leading: Image.asset(
          'images/logoUPI_32.png',
          // fit: BoxFit.fitHeight,
        ),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                 'images/foto_upi.png',
                  fit: BoxFit.contain,
              ),
            ),
            Container(
              padding: EdgeInsets.all(14),
              child :Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  padding: EdgeInsets.all(14),
                  child: IconButton(
                          icon: const Icon(Icons.account_box_outlined),
                          tooltip: 'Profil User',
                          onPressed: () {
                          // kalau ditap
                          },
                        ),
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  child: IconButton(
                          icon: const Icon(Icons.account_box_outlined),
                          tooltip: 'Profil User',
                          onPressed: () {
                          // kalau ditap
                          },
                        ),
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  child: IconButton(
                          icon: const Icon(Icons.account_box_outlined),
                          tooltip: 'Profil User',
                          onPressed: () {
                          // kalau ditap
                          },
                        ),
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  child: IconButton(
                          icon: const Icon(Icons.account_box_outlined),
                          tooltip: 'Profil User',
                          onPressed: () {
                          // kalau ditap
                          },
                        ),
                )
              ]
              )
            )
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
