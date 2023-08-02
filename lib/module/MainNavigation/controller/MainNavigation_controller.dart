import 'package:flutter/material.dart';
import '../view/MainNavigation_view.dart';

class MainnavigationController extends State<MainnavigationView> {
  static late MainnavigationController instance;
  late MainnavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
