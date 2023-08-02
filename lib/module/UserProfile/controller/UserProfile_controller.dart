
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/UserProfile_view.dart';

class UserprofileController extends State<UserprofileView> {
    static late UserprofileController instance;
    late UserprofileView view;

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
        
    