import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:pokkit/widgets/charts/cbar_chart.dart';

class CLineChart extends StatelessWidget {
  final List<Sample> data;
  const CLineChart({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<Sample, num>> series = [
      charts.Series(
        id: "sample",
        data: data,
        domainFn: (Sample series, _) => series.developers,
        measureFn: (Sample series, _) => series.developers,
        colorFn: (Sample series, _) => series.barColor,
      )
    ];
    return charts.LineChart(series, animate: true);
  }
}
