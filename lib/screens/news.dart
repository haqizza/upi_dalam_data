import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => readJson());
  }

  List _items = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data_berita.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: const Text('News',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
        appBar: AppBar(),
        widgets: const <Widget>[Icon(Icons.abc_rounded)],
        isLeading: false,
        leading: Image.asset(
          'images/logoUPI_32.png',
          // fit: BoxFit.fitHeight,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _items.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Card(
                            margin: const EdgeInsets.all(10),
                            child: ListTile(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                                );
                              },
                              leading: Image.network(
                                (() {
                                  if (_items[index]["picture"].isEmpty) {
                                    return "https://storage.googleapis.com/cv-skn-bucket/pemvis/kelompok-1/placeholder.png";
                                  }

                                  return _items[index]["picture"];
                                })(),
                                fit: BoxFit.cover,
                                height: 150,
                                width: 150,
                              ),
                              title: Text(_items[index]["judul"]),
                              subtitle: Text(_items[index]["tanggal"]),
                            ));
                      },
                    ))
                  : Container()
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFFF0404),
        unselectedItemColor: const Color(0xff000000),
        showSelectedLabels: false,
        showUnselectedLabels: false,
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
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        
      ),
    );
  }
}