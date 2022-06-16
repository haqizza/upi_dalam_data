import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'news.dart';
import 'infoDosen.dart';
import 'event.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


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
          child :Column(mainAxisAlignment: MainAxisAlignment.center,
          children:[
                  Container(
                    child :Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                    margin: const EdgeInsets.all(7),
                    child: IconButton(
                      icon: const Icon(MdiIcons.accountGroupOutline),
                      tooltip: 'Info Mahasiswa',
                      onPressed: () {
                      // kalau ditap
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                    margin: const EdgeInsets.all(7),
                    child: IconButton(
                      icon: const Icon(MdiIcons.accountGroup),
                      tooltip: 'Info Dosen',
                      onPressed: () async => await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (
                                  (context) => infoDosenPage()
                                )
                              )
                            ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                    margin: const EdgeInsets.all(7),
                    child: IconButton(
                            icon: const Icon(MdiIcons.calendarTextOutline),
                            tooltip: 'Event',
                            onPressed: () async => await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (
                                  (context) => Event()
                                )
                              )
                            ),
                          ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                    margin: const EdgeInsets.all(7),
                    child: IconButton(
                      icon: const Icon(MdiIcons.domain),
                      tooltip: 'Profile Fakultas',
                      onPressed: () {
                      // kalau ditap
                      },
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                      margin: const EdgeInsets.all(7),
                      child: IconButton(
                        icon: const Icon(MdiIcons.newspaperVariantMultipleOutline),
                        tooltip: 'Berita',
                        onPressed: () async => await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (
                                  (context) => News()
                                )
                              )
                            ),
                      ),
                    )
                  ]
               )
            )
          ]
          )
        )
      ],
    );
  }
}