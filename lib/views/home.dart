import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pokkit/utils/constants.dart';
import 'package:pokkit/views/insights.dart';
import 'package:pokkit/widgets/balances.dart';
import 'package:pokkit/widgets/charts/cbar_chart.dart';
import 'package:pokkit/widgets/charts/cline_chart.dart';
import 'package:pokkit/widgets/charts/cpie_chart.dart';
import 'package:pokkit/widgets/home_action_buttons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "Food & drinks": 5,
      "Rent": 3,
      "Clothing": 2,
      "Fuel": 1,
    };

    final List<Sample> data = [
      Sample(
        year: "2017",
        developers: 40000,
        barColor: charts.ColorUtil.fromDartColor(Color(kPrimary)),
      ),
      Sample(
        year: "2018",
        developers: 5000,
        barColor: charts.ColorUtil.fromDartColor(Color(kPrimary)),
      ),
      Sample(
        year: "2019",
        developers: 40000,
        barColor: charts.ColorUtil.fromDartColor(Color(kPrimary)),
      ),
      Sample(
        year: "2020",
        developers: 35000,
        barColor: charts.ColorUtil.fromDartColor(Color(kPrimary)),
      ),
      Sample(
        year: "2021",
        developers: 45000,
        barColor: charts.ColorUtil.fromDartColor(Color(kPrimary)),
      ),
    ];

    // List<charts.Series<dynamic, num>> series = [
    //   charts.Series(
    //     id: "sample",
    //     data: data,
    //     domainFn: (Sample series, _) => series.year,
    //     measureFn: (Sample series, _) => series.developers,
    //     colorFn: (Sample series, _) => series.barColor,
    //   )
    // ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: kContentPadding),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: kBorderColor)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          radius: 20, backgroundColor: Colors.grey.shade200),
                      const Icon(LucideIcons.moreHorizontal)
                    ],
                  ),
                ),
                const Balances(),
                const HomeActionButtons(),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(kContentPadding),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: kBorderColor),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Insights'),
                          GestureDetector(
                            onTap: () => Get.to(() => const Insights()),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'See all',
                                  style: TextStyle(color: Color(kPrimary)),
                                ),
                                Icon(
                                  LucideIcons.chevronRight,
                                  color: Color(kPrimary),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(kContentPadding),
                        decoration: BoxDecoration(
                          color: Color(kPrimary),
                          borderRadius: BorderRadius.circular(kRadius),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '👀 Guess what, you spend money most on Tuesdays at 8PM',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(kContentPadding),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: kBorderColor),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Expenses overview'),
                      const SizedBox(height: 30),
                      CPieChart(data: dataMap),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(kContentPadding),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: kBorderColor),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Expenses'),
                          Row(
                            children: [
                              Text(
                                'Last 10 days',
                                style: TextStyle(color: kGreyText),
                              ),
                              const Icon(LucideIcons.chevronDown, size: 15),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        height: 200,
                        child: CLineChart(data: data),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 10),
                // Container(
                //   padding: EdgeInsets.all(kContentPadding),
                //   margin: EdgeInsets.symmetric(horizontal: kContentPadding),
                //   decoration: BoxDecoration(
                //     color: Colors.grey.withOpacity(0.1),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: const Text(
                //     'Want to spend less? Create a budget to track your spending',
                //   ),
                // ),
                // const SizedBox(height: 10),
                // Container(
                //   width: double.infinity,
                //   padding: EdgeInsets.all(kContentPadding),
                //   decoration: BoxDecoration(
                //     border: Border(
                //       bottom: BorderSide(color: kBorderColor),
                //     ),
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           const Text('Days you spend most'),
                //           Row(
                //             children: [
                //               Text(
                //                 'Last 10 days',
                //                 style: TextStyle(color: kGreyText),
                //               ),
                //               const Icon(LucideIcons.chevronDown, size: 15),
                //             ],
                //           )
                //         ],
                //       ),
                //       const SizedBox(height: 30),
                //       SizedBox(
                //         width: double.infinity,
                //         height: 200,
                //         child: CBarChart(data: data),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
