import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TicketformController extends State<TicketformView> {
  static late TicketformController instance;
  late TicketformView view;

  @override
  void initState() {
    instance = this;
    getStatusTicketForm();
    getUsersTicketForm();

    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List statusTicketForm = [];
  getStatusTicketForm() async {
    statusTicketForm = await TicketService().getStatuses();
    setState(() {});
  }

  List usersTicketForm = [];
  getUsersTicketForm() async {
    usersTicketForm = await TicketService().getUsers();
    setState(() {});
  }

  // getTickets() async {
  //   statusTicket = await TicketService().getTickets();
  //   for (var dropdownItems in statusTicket) {
  //     dropdownItems.add({
  //       "label": dropdownItems["name"],
  //       "value": dropdownItems["id"],
  //     });
  //   }
  //   setState(() {});
  // }
}
