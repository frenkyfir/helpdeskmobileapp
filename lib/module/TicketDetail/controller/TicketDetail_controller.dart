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
      number = widget.item?["number"];
      subject = widget.item?["subject"];
      description = widget.item?["description"];
      userName = widget.item?["users"]["name"];
      openBy = widget.item?["open_by"];
      resolution = widget.item?["resolution"];
      problemDetail = widget.item?["problem_detail"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool get isEditMode => widget.item != null;

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

  List statusTicket = [];

  getStatus() async {
    statusTicket = await TicketService().getStatuses();
    setState(() {});
  }
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
