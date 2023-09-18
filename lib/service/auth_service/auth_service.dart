import 'package:dio/dio.dart';

class AuthService {
  static String? token;
  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        "http://localhost:8000/api/login",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );
      Map obj = response.data;
      token = obj["data"]["token"];
      return true;
    } on Exception {
      return false;
    }
  }
}
