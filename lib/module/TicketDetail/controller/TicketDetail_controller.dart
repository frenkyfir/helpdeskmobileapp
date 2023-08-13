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
      // status = widget.item["status"];
      resolution = widget.item["resolution"];
      problem_detail = widget.item["problem_detail"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool get isEditMode => widget.item != null;

  // String? status;
  String? resolution;
  String? problem_detail;

  doSave() async {
    if (isEditMode) {
      await TicketService().updateTicket(id: widget.item["ticket_id"], item: {
        "resolution": resolution,
        "problem_detail": problem_detail,
      });
    } else {
      await TicketService().addTicket({
        "resolution": resolution,
      });
    }
    Get.back();
  }
}
