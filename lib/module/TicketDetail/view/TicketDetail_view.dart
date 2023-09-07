import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TicketdetailView extends StatefulWidget {
  final Map? item;
  // final Map? statusList;

  const TicketdetailView({
    Key? key,
    this.item,
    // this.statusList,
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
                            value: controller.user_id,
                            onChanged: (value, label) {
                              controller.user_id = value;
                            },
                          );
                        }),
                      QMemoField(
                        label: "Problem Detail",
                        validator: Validator.required,
                        value: controller.problemDetail,
                        onChanged: (value) {
                          controller.description = value;
                        },
                      ),

                      if (controller.statusDetailTicket.isNotEmpty)
                        Builder(builder: (context) {
                          List<Map<String, dynamic>> items = [];
                          for (var item in controller.statusDetailTicket) {
                            items.add({
                              "label": item["name"],
                              "value": item["id"],
                            });
                          }
                          return QDropdownField(
                            label: "Status",
                            validator: Validator.required,
                            items: items,
                            value: controller.status_id,
                            onChanged: (value, label) {
                              controller.status_id = value;
                            },
                          );
                        }),

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
      bottomNavigationBar: Visibility(
        child: QButton(
          label: "Update",
          onPressed: () async {
            await controller.doSave();
          },
        ),
      ),
    );
  }

  @override
  State<TicketdetailView> createState() => TicketdetailController();
}
