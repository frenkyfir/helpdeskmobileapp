import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/TicketList_controller.dart';

class TicketlistView extends StatefulWidget {
  const TicketlistView({Key? key}) : super(key: key);

  Widget build(context, TicketlistController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Open",
              ),
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Done",
              ),
            ],
          ),
          title: const Text('List Ticket'),
        ),
        body: TabBarView(
          children: [
            // OpenTick
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.yellow[100]),
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://i.ibb.co/PGv8ZzG/me.jpg",
                      ),
                    ),
                    title: Text("John doe"),
                    subtitle: Text("john.doe@gmail.com"),
                    // trailing: Icon(
                    //   Icons.add,
                    //   size: 24.0,
                    // ),
                  ),
                ),
              ],
            ),
            // Pending
            Container(
              color: Colors.green[100],
            ),
            // Done
            Container(
              color: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
    ;
  }

  @override
  State<TicketlistView> createState() => TicketlistController();
}
