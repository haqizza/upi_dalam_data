import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';
import 'news.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key,}) : super(key: key);

  // @override
  // State<HomePage> createState() => _HomePageState();

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