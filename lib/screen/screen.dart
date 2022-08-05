import 'package:login/main.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Future initState() async {
    Future.delayed(const Duration(seconds: 10)).then((value) {
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
            const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    ));
  }
}
