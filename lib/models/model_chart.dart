import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  String faculty;
  int count;
  final charts.Color color;

  BarChartModel({
    required this.faculty,
    required this.count,
    required this.color,
  });
}
