import 'package:login/main.dart';
import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Future initState() async {
    Future.delayed(Duration(seconds: 10)).then((value) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MyApp()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'images/logo-social.png',
              color: Colors.blue,
              height: 32,
            ),
            SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    ));
  }
}
