import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upi_dalam_data/screens/highlight_detail.dart';

class Highlights extends StatefulWidget {
  final Function(String) setTitle;

  const Highlights({
    Key? key,
    required this.setTitle,
  }) : super(key: key);

  @override
  State<Highlights> createState() => _HighlightsState();
}

class _HighlightsState extends State<Highlights> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => readJson());
    WidgetsBinding.instance
        ?.addPostFrameCallback((_) => widget.setTitle('Highlights'));
  }

  void addPostFrameCallback(FrameCallback callback) {
    widget.setTitle('Highlights').add(callback);
  }

  List _highlights = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('highlights.json');
    final data = await json.decode(response);
    setState(() {
      _highlights = data["highlights"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: _highlights.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              shadowColor: Colors.black,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              borderOnForeground: true,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: InkWell(
                splashColor: Colors.red.withAlpha(30),
                onTap: () async => await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            HighlightDetail(highlight: _highlights[index])))),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 8),
                          child: Text(
                            _highlights[index]['title'],
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                      Container(
                        padding: const EdgeInsetsDirectional.only(top: 10),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                          child: Image.network(_highlights[index]['thumbnail'],
                              width: 300, height: 150, fit: BoxFit.fitWidth),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            _highlights[index]['desc'],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          )),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
