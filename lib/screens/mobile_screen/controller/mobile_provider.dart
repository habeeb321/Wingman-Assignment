import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:wingman_assignment/screens/mobile_screen/model/mobile_model.dart';
import 'package:wingman_assignment/screens/mobile_screen/service/mobile_service.dart';
import 'package:wingman_assignment/screens/otp_screen/view/otp_screen.dart';

class MobileProvider extends ChangeNotifier {
  TextEditingController mobileController = TextEditingController();
  bool isLoading = false;
  MobileModel? mobileModel;

  void mobileApiCall(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    final mobileNumber = mobileController.text;
    await MobileService().sendOtp(mobileNumber).then((value) {
      log(value.toString());
      mobileModel = value;
      notifyListeners();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const OtpScreen()));
    });
    isLoading = false;
    notifyListeners();
  }
}
