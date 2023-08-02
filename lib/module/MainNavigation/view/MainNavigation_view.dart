import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class MainnavigationView extends StatefulWidget {
  const MainnavigationView({Key? key}) : super(key: key);

  Widget build(context, MainnavigationController controller) {
    controller.view = this;

    /*
  TODO: Implement this @ controller
  int selectedIndex = 0;
  updateIndex(int newIndex) {
  selectedIndex = newIndex;
  setState(() {});
  }
  */
    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            TicketlistView(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "Ticket List",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "User Profile"),
          ],
        ),
      ),
    );
  }

  @override
  State<MainnavigationView> createState() => MainnavigationController();
}
