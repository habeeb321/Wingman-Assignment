import 'dart:convert';
import 'package:dio/dio.dart';

class MobileService {
  final String url = 'https://test-otp-api.7474224.xyz/sendotp.php';
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> sendOtp(String mobileNumber) async {
    try {
      final response = await _dio.post(url, data: {'mobile': mobileNumber});
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.data);
        return jsonResponse;
      } else {
        throw Exception('Failed to send OTP.');
      }
    } catch (e) {
      throw Exception('Failed to send OTP: $e');
    }
  }
}
