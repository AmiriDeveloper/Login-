import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'login_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // ignore: non_constant_identifier_names
  TextEditingController InstagramId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: HomePage(),
        //LoginPage(InstagramId: InstagramId),
      ),
    );
  }
}
