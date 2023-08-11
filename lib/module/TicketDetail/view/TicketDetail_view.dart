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
                        value: item["number"].toString(),
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
                        value: item["problem_detail"],
                        onChanged: (value) {},
                      ),
                      QDropdownField(
                        label: "Status",
                        validator: Validator.required,
                        value: item['status'],
                        items: [
                          {
                            "label": "Open",
                            "value": "Open",
                          },
                          {
                            "label": "Pending",
                            "value": "Pending",
                          },
                          {
                            "label": "Closed",
                            "value": "Closed",
                          }
                        ],
                        onChanged: (value, label) {},
                      ),
                      QTextField(
                        enabled: false,
                        label: "Open By",
                        validator: Validator.required,
                        value: item["open_by"],
                        onChanged: (value) {},
                      ),
                      QMemoField(
                        label: "Resolution",
                        validator: Validator.required,
                        value: item["resolution"],
                        onChanged: (value) {},
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
      bottomNavigationBar: QButton(
        label: "Update",
        onPressed: () {},
      ),
    );
  }

  @override
  State<TicketdetailView> createState() => TicketdetailController();
}
