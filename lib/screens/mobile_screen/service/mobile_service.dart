import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:wingman_assignment/screens/mobile_screen/model/mobile_model.dart';

class MobileService {
  final String url = 'https://test-otp-api.7474224.xyz/sendotp.php';
  final Dio _dio = Dio();

  Future<MobileModel> sendOtp(String mobileNumber) async {
    try {
      final response = await _dio.post(url, data: {'mobile': mobileNumber});
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.data);
        return MobileModel.fromJson(jsonResponse);
      } else {
        throw Exception('Failed to send OTP.');
      }
    } catch (e) {
      throw Exception('Failed to send OTP: $e');
    }
  }
}
