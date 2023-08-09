import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/UserProfile_controller.dart';

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
                      Text(
                        "Frenky Firnando Antoni",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        "frenkyfir@gmail.com",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                      Text(
                        "Mitrais Software Development",
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
                height: 10.0,
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = {};
                  return Container(
                    child: Card(
                      child: const ListTile(
                        leading: Icon(Icons.share),
                        minLeadingWidth: 0.0,
                        title: Text("John doe"),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UserprofileView> createState() => UserprofileController();
}
