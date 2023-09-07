import 'package:dio/dio.dart';

class StatusService {
  getStatuses() async {
    var response = await Dio().get(
      "http://localhost:8000/api/get-status",
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
