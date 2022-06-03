import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upi_dalam_data/screens/dashboard_detail.dart';

class Dashboards extends StatefulWidget {
  final Function(String) setTitle;

  const Dashboards({
    Key? key,
    required this.setTitle,
  }) : super(key: key);

  @override
  State<Dashboards> createState() => _DashboardsState();
}

class _DashboardsState extends State<Dashboards> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => readJson());
    WidgetsBinding.instance
        ?.addPostFrameCallback((_) => widget.setTitle('Dashboards'));
  }

  void addPostFrameCallback(FrameCallback callback) {
    widget.setTitle('Dashboards').add(callback);
  }

  List _dashboards = [];

  Future<void> readJson() async {
    final response = await rootBundle.loadString('dashboards.json');
    final data = await json.decode(response);
    setState(() {
      _dashboards = data["dashboards"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: _dashboards.length,
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
                            DashboardDetail(dashboard: _dashboards[index])))),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "UpdatedAt : " +
                              DateTime.parse(_dashboards[index]["datetime"])
                                  .toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 8),
                          child: Text(_dashboards[index]['title'],
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold))),
                      Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            _dashboards[index]['desc'],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 6,
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
