import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'news.dart';


class HomePage extends StatefulWidget {
  final Function(String) setTitle;
  
  const HomePage( {
    required this.setTitle,
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
  
class _HomePageState extends State <HomePage>{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
      ?.addPostFrameCallback((_) => widget.setTitle('UPI Dalam Data'));
  }

  // void addPostFrameCallback(FrameCallback callback) {
  //   widget.setTitle('Home Page').add(callback);
  //   log('callback called', name: 'title.test');
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
            'images/foto_upi.png',
            fit: BoxFit.contain,
        ),
        Card(
          margin: const EdgeInsets.all(10),
          child :Row(mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              margin: const EdgeInsets.all(14),
              child: IconButton(
                icon: const Icon(Icons.account_box_outlined),
                tooltip: 'Profil User',
                onPressed: () {
                // kalau ditap
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              margin: const EdgeInsets.all(14),
              child: IconButton(
                icon: const Icon(Icons.account_box_outlined),
                tooltip: 'Profil User',
                onPressed: () {
                // kalau ditap
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              margin: const EdgeInsets.all(14),
              child: IconButton(
                      icon: const Icon(Icons.account_box_outlined),
                      tooltip: 'Profil User',
                      onPressed: () {
                      // kalau ditap
                      },
                    ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              margin: const EdgeInsets.all(14),
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
    );
  }
}