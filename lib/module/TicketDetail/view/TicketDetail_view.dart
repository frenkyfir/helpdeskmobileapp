import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TicketdetailView extends StatefulWidget {
  final Map item;
  const TicketdetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, TicketdetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ticket Detail"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      QTextField(
                        enabled: false,
                        label: "Ticket ID",
                        validator: Validator.required,
                        value: item["ticketId"].toString(),
                        onChanged: (value) {},
                      ),
                      QTextField(
                        enabled: false,
                        label: "Subject",
                        validator: Validator.required,
                        value: item["subject"],
                        onChanged: (value) {},
                      ),
                      QMemoField(
                        label: "Description",
                        validator: Validator.required,
                        value: item["description"],
                        onChanged: (value) {},
                      ),
                      QDropdownField(
                        label: "Status",
                        validator: Validator.required,
                        items: [
                          {
                            "label": "open",
                            "value": "open",
                          },
                          {
                            "label": "inProgress",
                            "value": "inProgress",
                          }
                        ],
                        onChanged: (value, label) {},
                      ),
                      // QImagePicker(
                      //   label: "Photo",
                      //   validator: Validator.required,
                      //   value: null,
                      //   onChanged: (value) {},
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: () {},
          child: const Text("Update"),
        ),
      ),
    );
  }

  @override
  State<TicketdetailView> createState() => TicketdetailController();
}
