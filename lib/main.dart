import 'dart:developer';
import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:upi_dalam_data/screens/homepage.dart';
import 'package:upi_dalam_data/screens/notifications.dart';
import 'package:upi_dalam_data/screens/highlights.dart';
import 'package:upi_dalam_data/screens/dashboards.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

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
  IO.Socket socket = IO.io('http://localhost:3000');
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    connectToServer();
    fToast = FToast();
    fToast.init(context);
  }


  void showToast(msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      fontSize: 18.0,
    );
  }

  void connectToServer() {
    try {
     
      // Configure socket transports must be sepecified
      socket = IO.io('http://localhost:3000', 
        OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .build()
      );
     
      // Connect to websocket
      socket.connect();
     
      // Handle socket events
      socket.on('connect', (_) => print('connect: ${socket.id}'));
      socket.on('notified', (_) => handleNewNotification);

    } catch (e) {
      print(e.toString());
    }
  }

  void handleNewNotification(Map<String, dynamic> data) {
    showToast(data["message"]);
  }

  sendMessage(String message) {
    log(message);
    socket.emit("notify",
      {
        "id": socket.id,
        "message": message,
      },
    );
  }

  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  void setTitle(String title) {
    setState(() {
      topbarTitle = title;
    });
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
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.insights_outlined), label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_quilt_outlined), label: 'Highlight'),
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
      case 0:
        {
          return HomePage(setTitle: setTitle);
        }
      case 1:
        {
          return Dashboards(setTitle: setTitle);
        }
      case 2:
        {
          return Highlights(setTitle: setTitle);
        }
      case 3:
        {
          return Notifications(setTitle: setTitle);
        }
    }
  }
}
