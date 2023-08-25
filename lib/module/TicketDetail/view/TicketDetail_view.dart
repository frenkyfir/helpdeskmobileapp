import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TicketdetailView extends StatefulWidget {
  final Map? item;
  const TicketdetailView({
    Key? key,
    this.item,
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
                        value: controller.number,
                        onChanged: (value) {
                          controller.number = value;
                        },
                      ),

                      QTextField(
                        enabled: false,
                        label: "Subject",
                        validator: Validator.required,
                        value: controller.subject,
                        onChanged: (value) {
                          controller.subject = value;
                        },
                      ),
                      QMemoField(
                        label: "Description",
                        validator: Validator.required,
                        value: controller.description,
                        onChanged: (value) {
                          controller.description = value;
                        },
                      ),
                      QTextField(
                        enabled: false,
                        label: "Assign To",
                        validator: Validator.required,
                        value: controller.userName,
                        onChanged: (value) {
                          controller.userName = value;
                        },
                      ),
                      // QDropdownField(
                      //   label: "Status",
                      //   validator: Validator.required,
                      //   items: controller.items,
                      //   onChanged: (value, label) {},
                      // ),
                      Builder(builder: (context) {
                        List<Map<String, dynamic>> items = [];
                        for (var item in controller.statusTicket) {
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
                      QTextField(
                        enabled: false,
                        label: "Open By",
                        validator: Validator.required,
                        value: controller.openBy,
                        onChanged: (value) {},
                      ),
                      QMemoField(
                        label: "Resolution",
                        validator: Validator.required,
                        value: controller.resolution,
                        onChanged: (value) {
                          controller.resolution = value;
                        },
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
        onPressed: () async {
          await controller.doSave();
        },
      ),
    );
  }

  @override
  State<TicketdetailView> createState() => TicketdetailController();
}
