import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        actions: const [],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Welcome \nto Helpdesk Ticketing App",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 85, 79, 79),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Column(
                children: const [
                  Text(
                    "Westin Helpdesk Ticketing APP \nfor Easy Ticketing",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(),
                      child: QTextField(
                        label: "Email",
                        validator: Validator.required,
                        value: null,
                        onChanged: (value) {
                          controller.email = value;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(),
                      child: QTextField(
                        label: "Password",
                        obscure: true,
                        validator: Validator.required,
                        value: null,
                        onChanged: (value) {
                          controller.password = value;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 87, 151, 90),
                        ),
                        onPressed: () => controller.doLogin(),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
