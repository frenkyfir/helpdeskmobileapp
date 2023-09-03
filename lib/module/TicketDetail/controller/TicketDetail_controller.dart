import 'package:flutter/material.dart';
import 'package:hyper_ui/service/ticket_service/ticket_service.dart';

import '../../../state_util.dart';
import '../view/TicketDetail_view.dart';

class TicketdetailController extends State<TicketdetailView> {
  static late TicketdetailController instance;
  late TicketdetailView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      statusId = widget.item?["statusid"];
      number = widget.item?["number"];
      subject = widget.item?["subject"];
      description = widget.item?["description"];
      resolution = widget.item?["resolution"];
      problemDetail = widget.item?["problem_detail"];
    }
    getStatusDetail();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool get isEditMode => widget.item != null;

  String? status;
  int? statusId;
  String? number;
  String? subject;
  String? requester;
  String? problemDetail;
  String? resolution;
  String? description;
  String? userName;
  String? openBy;

  doSave() async {
    if (isEditMode) {
      await TicketService().updateTicket(id: widget.item?["ticket_id"], item: {
        "resolution": resolution,
      });
    }
    Get.back();
    setState(() {});
  }

  List statusDetailTicket = [];
  getStatusDetail() async {
    statusDetailTicket = await TicketService().getStatuses();
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
