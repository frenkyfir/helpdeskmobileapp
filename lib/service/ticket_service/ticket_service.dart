import 'package:dio/dio.dart';

class TicketService {
  Future<List> getTickets() async {
    var response = await Dio().get(
      "http://localhost:8000/api/get-open-tickets",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  getTicketsClosed() async {
    var response = await Dio().get(
      "http://localhost:8000/api/get-closed-tickets",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  Future addTicket(
    String subject,
    String requester,
    int priority_id,
    int category_id,
    int user_id,
    int channel_id,
    int status_id,
    String problem_detail,
  ) async {
    await Dio().post(
      "http://localhost:8000/api/createtickets",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "subject": subject,
        "requester": requester,
        "priority_id": priority_id,
        "category_id": category_id,
        "status_id": status_id,
        "user_id": user_id,
        "channel_id": channel_id,
        "problem_detail": problem_detail
      },
    );
  }

  Future updateTicket({
    required int id,
    required Map item,
  }) async {
    await Dio().post(
      "http://localhost:8000/api/updatetickets/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: item,
    );
  }

  // Future updateTicket({
  //   required int id,
  // }) async {
  //   var response = await Dio().put(
  //     "https://reqres.in/api/users/$id",
  //     options: Options(
  //       headers: {
  //         "Content-Type": "application/json",
  //       },
  //     ),
  //     data: {
  //       "name": "granfield",
  //       "job": "system analyst",
  //     },
  //   );
  //   Map obj = response.data;
  // }

  deleteTicket(
    int id,
  ) async {
    await Dio().delete(
      "http://localhost:8000/api/tickets/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }
}
