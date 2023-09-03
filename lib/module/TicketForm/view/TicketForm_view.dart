import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TicketformView extends StatefulWidget {
  const TicketformView({Key? key}) : super(key: key);

  Widget build(context, TicketformController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Assign Ticket"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    QTextField(
                      label: "Short Description",
                      validator: Validator.required,
                      // value: "John Doe",
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    QTextField(
                      label: "Requester",
                      validator: Validator.required,
                      // value: "John Doe",
                      onChanged: (value) {},
                    ),
                    const SizedBox(
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
                          label: "Users",
                          validator: Validator.required,
                          items: items,
                          onChanged: (value, label) {},
                        );
                      }),
                    const SizedBox(
                      height: 10.0,
                    ),
                    if (controller.statusTicketForm.isNotEmpty)
                      Builder(builder: (context) {
                        List<Map<String, dynamic>> items = [];
                        for (var item in controller.statusTicketForm) {
                          items.add({
                            "label": item["name"],
                            "value": item["id"],
                          });
                        }
                        return QDropdownField(
                          label: "Status",
                          validator: Validator.required,
                          items: items,
                          onChanged: (value, label) {},
                        );
                      }),
                    const SizedBox(
                      height: 10.0,
                    ),
                    QDropdownField(
                      label: "Channel",
                      validator: Validator.required,
                      helper: "Select Channel",
                      items: [
                        {
                          "label": "Admin",
                          "value": 1,
                        },
                        {
                          "label": "Staff",
                          "value": 2,
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    QDropdownField(
                      label: "Priority ",
                      validator: Validator.required,
                      items: [
                        {
                          "label": "Admin",
                          "value": 1,
                        },
                        {
                          "label": "Staff",
                          "value": 2,
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    QDropdownField(
                      label: "Category ",
                      validator: Validator.required,
                      helper: "select Category",
                      items: [
                        {
                          "label": "Admin",
                          "value": 1,
                        },
                        {
                          "label": "Staff",
                          "value": 2,
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    QTextField(
                      label: "Problem Description",
                      validator: Validator.required,
                      onChanged: (value) {},
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TicketformView> createState() => TicketformController();
}
