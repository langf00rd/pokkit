import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokkit/utils/constants.dart';
import 'package:pokkit/views/init.dart';
import 'package:pokkit/widgets/ui/button.dart';

class ChooseCurrency extends StatefulWidget {
  const ChooseCurrency({super.key});

  @override
  State<ChooseCurrency> createState() => _ChooseCurrencyState();
}

class _ChooseCurrencyState extends State<ChooseCurrency> {
  Map<String, String> selectedCurrency = {
    'symbol': '\$',
    'code': 'USD',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: kButtonHeight,
          padding: EdgeInsets.symmetric(horizontal: kContentPadding),
          child: Button(
              action: () => Get.offAll(() => const Init()), label: 'Continue'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(kContentPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Choose your currency',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
            ),
            const SizedBox(height: 10),
            Text(
              'This is the currency to be used in the app. This value can be changed later in settings',
              style: TextStyle(color: kGreyText),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: kBorderColor),
              ),
              child: GestureDetector(
                onTap: () => showCurrencyPicker(
                  context: context,
                  onSelect: (Currency currency) {
                    setState(() {
                      selectedCurrency = {
                        'code': currency.code,
                        'symbol': currency.symbol,
                      };
                    });
                  },
                  theme: CurrencyPickerThemeData(
                    bottomSheetHeight: MediaQuery.of(context).size.height / 2,
                    inputDecoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 15),
                      hintText: 'Find country',
                      hintStyle: TextStyle(color: kGreyText),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                child: Text(
                  '${selectedCurrency['symbol']} ${selectedCurrency['code']}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
