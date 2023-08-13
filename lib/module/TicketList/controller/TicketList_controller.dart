import 'package:flutter/material.dart';
import 'package:hyper_ui/service/ticket_service/ticket_service.dart';
import '../view/TicketList_view.dart';

class TicketlistController extends State<TicketlistView> {
  static late TicketlistController instance;
  late TicketlistView view;

  @override
  void initState() {
    instance = this;
    getTickets();
    getTicketsClosed();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List tickets = [];
  List ticketsClosed = [];

  getTickets() async {
    tickets = await TicketService().getTickets();
    setState(() {});
  }

  getTicketsClosed() async {
    ticketsClosed = await TicketService().getTicketsClosed();
    setState(() {});
  }
}
