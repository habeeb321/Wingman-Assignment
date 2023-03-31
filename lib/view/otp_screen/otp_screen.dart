import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:wingman_assignment/core/constants.dart';
import 'package:wingman_assignment/view/login_screen/login_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OtpTextField(
              textStyle: const TextStyle(color: Colors.black),
              numberOfFields: 4,
              borderColor: kBlackcolor,
              enabledBorderColor: kBlackcolor,
              borderRadius: BorderRadius.circular(12),
              showFieldAsBox: true,
              onSubmit: (String verificationCode) {},
            ),
            kHeight10,
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
