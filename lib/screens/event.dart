import 'package:flutter/material.dart';
import 'package:upi_dalam_data/screens/event_detail.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Event extends StatefulWidget {
  const Event({
    Key? key,
  }) : super(key: key);

  @override
  State<Event> createState() => _HomePageState();
}

class _HomePageState extends State<Event> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => readJson());
  }

  List _event = [];
  // List _judul = [];
  // List _isi = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data_event.json');
    final data = await json.decode(response);
    setState(() {
      _event = data["event"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'Event',
        appBar: AppBar(),
        isLogo: false,
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _event.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                      itemCount: _event.length,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: const EdgeInsets.all(10),
                            child: ListTile(
                              onTap:  () async => await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (
                                  (context) => EventDetail(
                                    event: _event[index],
                                  )
                                )
                              )
                            ),
                              leading: Image.network(
                                (() {
                                  if (_event[index]["picture"].isEmpty) {
                                    return "https://storage.googleapis.com/cv-skn-bucket/pemvis/kelompok-1/placeholder.png";
                                  }

                                  return _event[index]["picture"];
                                })(),
                                fit: BoxFit.cover,
                                height: 150,
                                width: 150,
                              ),
                              title: Text(_event[index]["judul"]),
                              subtitle: Text(_event[index]["tanggal"]),
                            ));
                      },
                    ))
                  : Container()
            ],
          )),
    );
  }
}