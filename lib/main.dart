import 'dart:js';

import 'package:flutter/material.dart';
import 'package:upi_dalam_data/screens/homepage.dart';
import 'package:upi_dalam_data/screens/notification.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'UPI Dalam Data',
    initialRoute: '/',
    routes: {
      '/' : (context) => HomePage(),
      '/notification': (context) => Notifications(),
    },
  ));
}

