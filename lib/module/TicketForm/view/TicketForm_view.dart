import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TicketformView extends StatefulWidget {
  TicketformView({Key? key}) : super(key: key);

  Widget build(context, TicketformController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text("Assign Ticket"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    QTextField(
                      label: "Short Description",
                      validator: Validator.required,
                      // value: "John Doe",
                      onChanged: (value) {
                        controller.subject = value;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    QTextField(
                      label: "Requester",
                      validator: Validator.required,
                      // value: "John Doe",
                      onChanged: (value) {
                        controller.requester = value;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    if (controller.usersTicketForm.isNotEmpty)
                      Builder(builder: (context) {
                        List<Map<String, dynamic>> items = [];
                        for (var item in controller.usersTicketForm) {
                          items.add({
                            "label": item["name"],
                            "value": item["id"],
                          });
                        }
                        return QDropdownField(
                          label: "Support",
                          validator: Validator.required,
                          items: items,
                          onChanged: (value, label) {
                            controller.user_id = value;
                          },
                        );
                      }),
                    SizedBox(
                      height: 10.0,
                    ),
                    // if (controller.statusTicketForm.isNotEmpty)
                    //   Builder(builder: (context) {
                    //     List<Map<String, dynamic>> items = [];
                    //     for (var item in controller.statusTicketForm) {
                    //       items.add({
                    //         "label": item["name"],
                    //         "value": item["id"],
                    //       });
                    //     }
                    //     return QDropdownField(
                    //       label: "Status",
                    //       validator: Validator.required,
                    //       items: items,
                    //       onChanged: (value, label) {},
                    //     );
                    //   }),
                    SizedBox(
                      height: 10.0,
                    ),
                    if (controller.channelsTicketForm.isNotEmpty)
                      Builder(builder: (context) {
                        List<Map<String, dynamic>> items = [];
                        for (var item in controller.channelsTicketForm) {
                          items.add({
                            "label": item["name"],
                            "value": item["id"],
                          });
                        }
                        return QDropdownField(
                          hint: "select Channel",
                          label: "Channel",
                          validator: Validator.required,
                          items: items,
                          onChanged: (value, label) {
                            controller.channel_id = value;
                          },
                        );
                      }),
                    SizedBox(
                      height: 10.0,
                    ),
                    if (controller.prioritysTicketForm.isNotEmpty)
                      Builder(builder: (context) {
                        List<Map<String, dynamic>> items = [];
                        for (var item in controller.prioritysTicketForm) {
                          items.add({
                            "label": item["name"],
                            "value": item["id"],
                          });
                        }
                        return QDropdownField(
                          label: "Priority",
                          validator: Validator.required,
                          items: items,
                          onChanged: (value, label) {
                            controller.priority_id = value;
                          },
                        );
                      }),
                    SizedBox(
                      height: 10.0,
                    ),
                    if (controller.categorysTicketForm.isNotEmpty)
                      Builder(builder: (context) {
                        List<Map<String, dynamic>> items = [];
                        for (var item in controller.categorysTicketForm) {
                          items.add({
                            "label": item["name"],
                            "value": item["id"],
                          });
                        }
                        return QDropdownField(
                          label: "Category",
                          validator: Validator.required,
                          items: items,
                          onChanged: (value, label) {
                            controller.category_id = value;
                          },
                        );
                      }),
                    SizedBox(
                      height: 10.0,
                    ),
                    QTextField(
                      label: "Problem Description",
                      validator: Validator.required,
                      onChanged: (value) {
                        controller.problem_detail = value;
                      },
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: QButton(
          label: "Assign",
          onPressed: () async {
            await controller.doAssign();
          },
        ),
      ),
    );
  }

  @override
  State<TicketformView> createState() => TicketformController();
}
