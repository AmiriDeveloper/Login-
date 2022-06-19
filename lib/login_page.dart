import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
    required this.InstagramId,
  }) : super(key: key);

  final TextEditingController InstagramId;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 60),
                  child: CircleAvatar(
                    backgroundColor: Colors.white10,
                    radius: 50.0,
                    child: Icon(
                      Icons.person_sharp,
                      size: 90,
                    ),
                  ),
                ),
              ],
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
                controller: InstagramId,
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
                controller: InstagramId,
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
            ElevatedButton(onPressed: () {}, child: const Text('Sign In'))

            /* Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.cyan[700],
                ),
                title: Text(
                  '+43 234 567 89',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.cyan[700],
                ),
                title: Text(
                  'ammar@email.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
