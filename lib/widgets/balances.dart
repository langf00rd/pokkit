import 'package:flutter/material.dart';
import 'package:pokkit/utils/constants.dart';

class Balances extends StatelessWidget {
  const Balances({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Current balance', style: TextStyle(color: kGreyText)),
                  Text(
                    '\$10,000',
                    style: TextStyle(
                      fontSize: kFontSizeL,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Container(color: kBorderColor, height: 100, width: 1),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Your savings', style: TextStyle(color: kGreyText)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$8,000',
                        style: TextStyle(
                          fontSize: kFontSizeL,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text('+\$50',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 12,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
