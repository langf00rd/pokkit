import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CBarChart extends StatelessWidget {
  final List<Sample> data;
  const CBarChart({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<Sample, String>> series = [
      charts.Series(
        id: "sample",
        data: data,
        domainFn: (Sample series, _) => series.year,
        measureFn: (Sample series, _) => series.developers,
        colorFn: (Sample series, _) => series.barColor,
      )
    ];
    return charts.BarChart(series, animate: true);
  }
}

class Sample {
  final String year;
  final int developers;
  final charts.Color barColor;

  Sample({
    required this.year,
    required this.developers,
    required this.barColor,
  });
}
