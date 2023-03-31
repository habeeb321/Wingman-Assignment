import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:wingman_assignment/screens/mobile_screen/model/mobile_model.dart';
import 'package:wingman_assignment/screens/mobile_screen/service/mobile_service.dart';
import 'package:wingman_assignment/screens/otp_screen/otp_screen.dart';

class MobileProvider extends ChangeNotifier {
  TextEditingController mobileController = TextEditingController();
  bool isLoading = false;

  void mobileApiCall(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    final MobileModel mobileModel =
        MobileModel(mobile: mobileController.text.toString());
    await MobileService().sendOtp(mobileModel.mobile).then((value) {
      log(value.toString());
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const OtpScreen(),
      ));
    });
    isLoading = false;
    notifyListeners();
  }
}
