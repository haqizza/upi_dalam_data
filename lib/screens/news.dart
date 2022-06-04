import 'package:flutter/material.dart';
import 'package:upi_dalam_data/screens/news_detail.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class News extends StatefulWidget {
  const News({
    Key? key,
  }) : super(key: key);

  @override
  State<News> createState() => _HomePageState();
}

class _HomePageState extends State<News> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => readJson());
  }

  List _news = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/data_berita.json');
    final data = await json.decode(response);
    setState(() {
      _news = data["news"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'News',
        appBar: AppBar(),
        isLogo: false,
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _news.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                      itemCount: _news.length,
                      itemBuilder: (context, index) {
                        return Card(
                            margin: const EdgeInsets.all(10),
                            child: ListTile(
                              onTap:  () async => await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (
                                  (context) => NewsDetail(
                                    news: json.decode(_news[index]),
                                  )
                                )
                              )
                            ),
                              leading: Image.network(
                                (() {
                                  if (_news[index]["picture"].isEmpty) {
                                    return "https://storage.googleapis.com/cv-skn-bucket/pemvis/kelompok-1/placeholder.png";
                                  }

                                  return _news[index]["picture"];
                                })(),
                                fit: BoxFit.cover,
                                height: 150,
                                width: 150,
                              ),
                              title: Text(_news[index]["judul"]),
                              subtitle: Text(_news[index]["tanggal"]),
                            ));
                      },
                    ))
                  : Container()
            ],
          )),
    );
  }
}