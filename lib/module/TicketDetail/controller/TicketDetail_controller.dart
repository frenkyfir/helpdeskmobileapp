import 'package:flutter/material.dart';
import '../view/TicketDetail_view.dart';

class TicketdetailController extends State<TicketdetailView> {
  static late TicketdetailController instance;
  late TicketdetailView view;

  @override
  void initState() {
    instance = this;
    // if (isEditMode) {
    //   status = widget.item["status"];
    // }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  // String? status;
  // String? status;
  // String? status;

  bool get isEditMode => widget.item != null;
}
