import 'package:flutter/material.dart';
import '../view/TicketDetail_view.dart';

class TicketdetailController extends State<TicketdetailView> {
  static late TicketdetailController instance;
  late TicketdetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
