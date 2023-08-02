import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

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
            // OpenTicket
            ListView.builder(
              itemCount: controller.tickets.length,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                var item = controller.tickets[index];
                return Column(
                  children: [
                    InkWell(
                      onTap: () => Get.to(TicketdetailView(item: item)),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.yellow[100]),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                            ),
                          ),
                          title: Text(item["subject"]),
                          subtitle: Text(item["description"]),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            // PendingTicket
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
