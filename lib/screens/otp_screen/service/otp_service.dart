import 'package:dio/dio.dart';

Future<dynamic> verifyOtp(String requestId, String code) async {
  try {
    Dio dio = Dio();
    Response response = await dio.post(
      'http://localhost/sample-api-login/verifyotp.php',
      data: {'request_id': requestId, 'code': code},
    );

    return response.data;
  } catch (e) {
    throw Exception('Failed to verify OTP: $e');
  }
}
