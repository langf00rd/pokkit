import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pokkit/utils/constants.dart';
import 'package:pokkit/widgets/button.dart';
import 'package:pokkit/widgets/line_chart.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(kContentPadding),
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: const Icon(LucideIcons.bell),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Current balance',
                            style: TextStyle(color: kGreyText),
                          ),
                          const Text(
                            '\$150,000',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 215, 234, 252),
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: Icon(LucideIcons.plus,
                                    color: Color(kPrimary)),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Top up',
                                style: TextStyle(
                                  color: Color(kPrimary),
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 215, 234, 252),
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: Icon(LucideIcons.receipt,
                                    color: Color(kPrimary)),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Add expense',
                                style: TextStyle(
                                  color: Color(kPrimary),
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 215, 234, 252),
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: Icon(LucideIcons.list,
                                    color: Color(kPrimary)),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'New budget',
                                style: TextStyle(
                                  color: Color(kPrimary),
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const LineChartSample2(),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: kContentPadding),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  // Button(
                  //   radius: 999,
                  //   width: MediaQuery.of(context).size.width / 3 + 50,
                  //   prefix: const Icon(LucideIcons.receipt,
                  //       color: Color(0xff0387FF)),
                  //   action: () => {},
                  //   label: 'Add an expense',
                  //   textColor: const Color(0xff0387FF),
                  //   color: const Color.fromARGB(255, 215, 234, 252),
                  // ),
                  //       const SizedBox(width: 10),
                  //       Button(
                  //         radius: 999,
                  //         width: MediaQuery.of(context).size.width / 3,
                  //         prefix: const Icon(LucideIcons.plus,
                  //             color: Color(0xff0387FF)),
                  //         action: () => {},
                  //         label: 'Top up',
                  //         textColor: const Color(0xff0387FF),
                  //         color: const Color.fromARGB(255, 215, 234, 252),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
