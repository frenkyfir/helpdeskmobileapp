import 'package:dio/dio.dart';

class ChannelService {
  getChannels() async {
    var response = await Dio().get(
      "http://localhost:8000/api/get-channels",
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
