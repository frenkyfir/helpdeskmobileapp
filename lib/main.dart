import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Helpdesk App',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: LoginView(),
      builder: (context, child) => debugView(
        context: context,
        child: child,
        visible: true,
      ),
    );
  }
}
