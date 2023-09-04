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
    getChannelsTicketForm();
    getPrioritysTicketForm();
    getCategorysTicketForm();
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

  List channelsTicketForm = [];
  getChannelsTicketForm() async {
    channelsTicketForm = await TicketService().getChannels();
    setState(() {});
  }

  List prioritysTicketForm = [];
  getPrioritysTicketForm() async {
    prioritysTicketForm = await TicketService().getPrioritys();
    setState(() {});
  }

  List categorysTicketForm = [];
  getCategorysTicketForm() async {
    categorysTicketForm = await TicketService().getCategorys();
    setState(() {});
  }
}
