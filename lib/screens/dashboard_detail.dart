import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:upi_dalam_data/widgets/topbar.dart';
import '../models/model_yearly.dart';
import '../models/model_chart.dart';
import 'package:http/http.dart' as http;
import 'package:charts_flutter/flutter.dart' as charts;

class DashboardDetail extends StatefulWidget {
  final Map dashboard;

  const DashboardDetail({
    Key? key,
    required this.dashboard,
  }) : super(key: key);

  @override
  State<DashboardDetail> createState() => _DashboardDetailState();
}

class _DashboardDetailState extends State<DashboardDetail> {
  String _year = "";

  final years = ["2020", "2021"];
  String? _selectedYear;
  List<DropdownMenuItem<String>> _yearList() {
    return years
        .map<DropdownMenuItem<String>>(
          (x) => DropdownMenuItem(
            value: x,
            child: Text(x),
          ),
        )
        .toList();
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _year = "2020";
    });
  }

  Future<KeketatanPerTahun> _fetchData(String endpoint) async {
    final response = await http.get(Uri.parse(endpoint));

    if (response.statusCode == 200) {
      return KeketatanPerTahun.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'Dashboard',
        appBar: AppBar(),
        isLogo: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Center(
              child: Column(
            children: [
              Text(
                widget.dashboard["title"],
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.dashboard["desc"],
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          )),
          FutureBuilder<KeketatanPerTahun>(
            key: UniqueKey(),
            future: _fetchData(
                'http://api.rumahcerdas.best:8000/keketatan/upi/' + _year),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final chart = <BarChartModel>[];
                for (var i = 0; i < snapshot.data!.data!.length; i++) {
                  chart.add(BarChartModel(
                      color: charts.ColorUtil.fromDartColor(Colors.blue),
                      count: snapshot.data!.data![i].keketatan!.toInt(),
                      faculty: snapshot.data!.data![i].fak.toString()));
                }
                List<charts.Series<BarChartModel, String>> series = [
                  charts.Series(
                      id: "Subscribers",
                      data: chart,
                      domainFn: (BarChartModel series, _) => series.faculty,
                      measureFn: (BarChartModel series, _) => series.count,
                      colorFn: (BarChartModel series, _) => series.color)
                ];
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: charts.BarChart(series, animate: true),
                          ),
                          DropdownButton(
                            items: _yearList(),
                            value: _selectedYear,
                            onChanged: (String? value) => setState(() {
                              _selectedYear = value ?? "2020";
                              _year = value ?? "2020";
                            }),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
