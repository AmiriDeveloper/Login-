import 'package:flutter/material.dart';
import 'package:login/screen/home_screen.dart';
import 'package:login/screen/profile_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  TextEditingController instagramId = TextEditingController();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ProfileScreen(),
        // HomePage(),
        //LoginPage(InstagramId: InstagramId),
      ),
    );
  }
}
