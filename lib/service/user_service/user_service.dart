import 'package:dio/dio.dart';

class UserService {
  getUsers() async {
    var response = await Dio().get(
      "http://localhost:8000/api/get-users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }
}
