import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

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
  // @override
  // void initState() {
  //   super.initState();
  // }

  final List<Feature> features = [
    Feature(
      title: "SNMPTN",
      color: Colors.green,
      data: [0.514, 0.828, 0.514, 0.514, 0.571, 0.514],
    ),
    Feature(
      title: "SBMPTN",
      color: Colors.blue,
      data: [0.485, 0.828, 0.485, 0.314, 0.342, 0],
    ),
    Feature(
      title: "SMUPI",
      color: Colors.orange,
      data: [0.2, 0.314, 0.2, 0.228, 0.114, 0],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopBar(
          title: 'Dashboard',
          appBar: AppBar(),
          isLogo: false,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 64.0),
                child: Text(
                  widget.dashboard['title'],
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
              LineGraph(
                features: features,
                size: const Size(420, 450),
                labelX: const ['2017', '2018', '2019', '2020', '2021', '2022'],
                labelY: const ['0', '5', '10', '15', '20', '25', '30', '35'],
                showDescription: true,
                graphColor: Colors.black87,
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }
}
