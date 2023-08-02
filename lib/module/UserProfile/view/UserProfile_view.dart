
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/UserProfile_controller.dart';

class UserprofileView extends StatefulWidget {
    const UserprofileView({Key? key}) : super(key: key);

    Widget build(context, UserprofileController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Userprofile"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
        ),
    );
    }

    @override
    State<UserprofileView> createState() => UserprofileController();
}
    