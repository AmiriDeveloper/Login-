import 'package:flutter/material.dart';
import 'package:login/screen/home_screen.dart';
import 'package:login/w.dart';

class TalkScreen extends StatefulWidget {
  const TalkScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TalkScreen> createState() => _TalkScreenState();
}

class _TalkScreenState extends State<TalkScreen> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.blue[700],
              ),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "images/me.jpg",
                    ),
                    fit: BoxFit.cover),
                color: Colors.white,
                shape: BoxShape.circle),
          ),
          SizedBox(
            height: 50,
            width: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Simon",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Last seen 2:10",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(child: Container()),
        ]),
        actions: [
          PopupMenuButton<Menu>(
              onSelected: (Menu item) {
                setState(() {});
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                    PopupMenuItem<Menu>(
                      value: Menu.itemOne,
                      child: SizedBox(
                          child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.video_call_rounded,
                              color: Colors.blue,
                            ),
                          ),
                          Text('Video Call'),
                        ],
                      )),
                    ),
                    PopupMenuItem<Menu>(
                      value: Menu.itemTwo,
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.call_rounded,
                              size: 20,
                              color: Colors.green,
                            ),
                          ),
                          Text('Call'),
                        ],
                      ),
                    ),
                    PopupMenuItem<Menu>(
                      value: Menu.itemThree,
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.block,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                          Text('Block'),
                        ],
                      ),
                    ),
                    PopupMenuItem<Menu>(
                      value: Menu.itemFour,
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.delete_sharp,
                              size: 22,
                              color: Color.fromARGB(255, 226, 40, 27),
                            ),
                          ),
                          Text('delete'),
                        ],
                      ),
                    ),
                  ])
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.emoji_emotions,
                      color: Colors.blue[600],
                    ),
                  ),
                  const Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      fillColor: Colors.black,
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      hintText: 'Enter your massege....',
                      border: InputBorder.none,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.mic,
                      color: Colors.blue[600],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
