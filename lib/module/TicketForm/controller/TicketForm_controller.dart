import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/TicketForm_view.dart';

class TicketformController extends State<TicketformView> {
  static late TicketformController instance;
  late TicketformView view;

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
