import 'package:flutter/material.dart';
import 'package:login/Pages/page_two.dart';
import 'Pages/page_one.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal[300],
            elevation: 0,
            toolbarHeight: 0,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.chat)),
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.call)),
              ],
            )),
        body: TabBarView(children: [
          PageOne(),
          PageTwo(),
          Center(child: Text("data", style: TextStyle(fontSize: 20)))
        ]),
      ),
    );
  }
}
