import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:pokkit/utils/constants.dart';

class CPieChart extends StatelessWidget {
  const CPieChart({super.key, required this.data});

  final Map<String, double> data;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: data,
      animationDuration: const Duration(milliseconds: 800),
      chartLegendSpacing: 60,
      chartRadius: MediaQuery.of(context).size.width / 3.2,
      colorList: [
        Color(kPrimary),
        Colors.red,
        Colors.green,
        const Color(0xFFF99C2F),
        // Colors.black,
        // Colors.black12,
        // Colors.black26,
        // Colors.black38,
        // Colors.black45,
        // Colors.black54,
        // Colors.black87,
      ],
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      ringStrokeWidth: 15,
      // centerText: "HYBRID",
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        legendTextStyle: TextStyle(color: kGreyText),
      ),
      chartValuesOptions: const ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: false,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
      // gradientList: ---To add gradient colors---
      // emptyColorGradient: ---Empty Color gradient---
    );
  }
}
