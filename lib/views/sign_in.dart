import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokkit/utils/constants.dart';
import 'package:pokkit/views/choose_currency.dart';
import 'package:pokkit/widgets/button.dart';
import 'package:pokkit/widgets/logo.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 50),
              logo(),
              const SizedBox(height: 20),
              const Text('Login to Pokkit',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  hintText: 'Your email',
                  hintStyle: TextStyle(color: kGreyText),
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
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: kGreyText),
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
                ),
              ),
              const SizedBox(height: 20),
              Button(
                action: () => Get.to(() => const ChooseCurrency()),
                label: 'Continue',
              ),
              const SizedBox(height: 20),
              const Text(
                'OR',
                style: TextStyle(color: Color(0xFFBBBBBB)),
              ),
              const SizedBox(height: 20),
              Button(
                textColor: Colors.black,
                action: () => {},
                label: 'Continue with Google',
                prefix: Image.asset('assets/google.png', width: 24),
                isOutlined: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
