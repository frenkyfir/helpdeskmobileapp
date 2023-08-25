import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class UserprofileView extends StatefulWidget {
  const UserprofileView({Key? key}) : super(key: key);

  Widget build(context, UserprofileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Frenky Firnando Antoni",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "frenkyfir@gmail.com",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                      Text(
                        "xxxxxxxxxx",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  leading: Icon(MdiIcons.informationVariantCircle),
                  minLeadingWidth: 0.0,
                  title: Text("Info Profile"),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  leading: Icon(MdiIcons.formTextboxPassword),
                  minLeadingWidth: 0.0,
                  title: Text("Change Password"),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  leading: Icon(MdiIcons.frequentlyAskedQuestions),
                  minLeadingWidth: 0.0,
                  title: Text("FAQ"),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  leading: Icon(MdiIcons.informationVariantCircleOutline),
                  minLeadingWidth: 0.0,
                  title: Text("TOS"),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UserprofileView> createState() => UserprofileController();
}
