import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/category_service/category_service.dart';
import 'package:hyper_ui/service/channel_service/channel_service.dart';
import 'package:hyper_ui/service/priority_service/priority_service.dart';
import 'package:hyper_ui/service/status_service/status_service.dart';
import 'package:hyper_ui/service/user_service/user_service.dart';

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

  String? subject;
  String? requester;
  int? user_id;
  int? priority_id;
  int? category_id;
  int? channel_id;
  int? status_id = 1;
  String? problem_detail;

  doAssign() async {
    await TicketService().addTicket(
      subject = subject!,
      requester = requester!,
      priority_id = priority_id!,
      category_id = category_id!,
      user_id = user_id!,
      channel_id = channel_id!,
      status_id = status_id = 1,
      problem_detail = problem_detail!,
    );
    Get.back();
  }

  List statusTicketForm = [];
  getStatusTicketForm() async {
    statusTicketForm = await StatusService().getStatuses();
    setState(() {});
  }

  List usersTicketForm = [];
  getUsersTicketForm() async {
    usersTicketForm = await UserService().getUsers();
    setState(() {});
  }

  List channelsTicketForm = [];
  getChannelsTicketForm() async {
    channelsTicketForm = await ChannelService().getChannels();
    setState(() {});
  }

  List prioritysTicketForm = [];
  getPrioritysTicketForm() async {
    prioritysTicketForm = await PriorityService().getPrioritys();
    setState(() {});
  }

  List categorysTicketForm = [];
  getCategorysTicketForm() async {
    categorysTicketForm = await CategoryService().getCategorys();
    setState(() {});
  }
}
