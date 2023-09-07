import 'package:flutter/material.dart';
import 'package:hyper_ui/service/status_service/status_service.dart';
import 'package:hyper_ui/service/ticket_service/ticket_service.dart';
import 'package:hyper_ui/service/user_service/user_service.dart';

import '../../../state_util.dart';
import '../view/TicketDetail_view.dart';

class TicketdetailController extends State<TicketdetailView> {
  static late TicketdetailController instance;
  late TicketdetailView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      status_id = widget.item?["status_id"];
      number = widget.item?["number"];
      user_id = widget.item?["user_id"];
      subject = widget.item?["subject"];
      problemDetail = widget.item?["problemDetail"];
      resolution = widget.item?["resolution"];
      problemDetail = widget.item?["problem_detail"];
    }
    getStatusDetail();
    getUsersTicketForm();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool get isEditMode => widget.item != null;

  String? status;
  int? status_id;
  int? user_id;
  String? number;
  String? subject;
  String? requester;
  String? problemDetail;
  String? assignTo;
  String? resolution;
  String? description;
  String? userName;
  String? openBy;

  doSave() async {
    if (isEditMode) {
      await TicketService().updateTicket(id: widget.item?["ticket_id"], item: {
        "resolution": resolution,
        "status_id": status_id,
        "user_id": user_id,
      });
    }
    Get.back();
  }

  List statusDetailTicket = [];
  getStatusDetail() async {
    statusDetailTicket = await StatusService().getStatuses();
    setState(() {});
  }

  List usersTicketForm = [];
  getUsersTicketForm() async {
    usersTicketForm = await UserService().getUsers();
    setState(() {});
  }

  // List statusTicket = [];

  // getStatus() async {
  //   statusTicket = await TicketService().getStatuses();
  //   setState(() {});
  // }
  // getTickets() async {
  //   tickets = await TicketService().getTickets();
  //   for (var dropdownItems in tickets) {
  //     dropdownItems.add({
  //       "label": dropdownItems["status"]["name"],
  //       "value": dropdownItems["status"]["id"],
  //     });
  //   }
  //   setState(() {});
  // }
}
