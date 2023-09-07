import 'package:dio/dio.dart';

class PriorityService {
  getPrioritys() async {
    var response = await Dio().get(
      "http://localhost:8000/api/get-prioritys",
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
