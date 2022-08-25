import 'package:flutter/material.dart';
import 'package:login/model/colors.dart';
import 'package:login/screen/home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
    required this.instagramId,
  }) : super(key: key);

  final TextEditingController instagramId;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height / 2.7,
              child: Stack(children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(120),
                        bottomRight: Radius.circular(120),
                      )),
                ),
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width / 2.5,
                    ),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.person_sharp,
                        size: 90,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            const Text(
              'Welcome!',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Sign in to continue',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 90.0,
              height: 20.0,
              child: Divider(
                color: Colors.cyan[200],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: instagramId,
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.green)),
                    hintText: "Exampel@gmail.com",
                    helperText: "email",
                    labelText: 'lable',
                    prefixIcon: const Icon(Icons.person, color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: instagramId,
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.green)),
                    hintText: "pasward",
                    helperText: "pasward",
                    labelText: 'lable',
                    prefixIcon:
                        const Icon(Icons.password, color: Colors.black)),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
                child: const Text('Sign In'))
          ],
        ),
      ),
    );
  }
}
