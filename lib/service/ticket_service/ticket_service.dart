import 'package:dio/dio.dart';

class TicketService {
  getTickets() async {
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

  addTicket(Map item) async {
    await Dio().post(
      "http://localhost:8000/api/createtickets",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: item,
    );
  }

  updateTicket({
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
