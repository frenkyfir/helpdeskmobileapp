import 'package:dio/dio.dart';

class CategoryService {
  getCategorys() async {
    var response = await Dio().get(
      "http://localhost:8000/api/get-categorys",
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
