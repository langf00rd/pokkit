import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokkit/utils/constants.dart';
import 'package:pokkit/views/home.dart';
import 'package:pokkit/views/init.dart';
import 'package:pokkit/widgets/button.dart';

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
              action: () => Get.to(() => const Init()), label: 'Continue'),
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
            GestureDetector(
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
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E6F0),
                      ), //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E6F0),
                      ), //<-- SEE HERE
                    ),
                    hintText: 'Search for country',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF8C98A8).withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
              ),
              child: Text(
                '${selectedCurrency['symbol']} ${selectedCurrency['code']}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
