import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/model/colors.dart';
import 'package:login/model/data.dart';
import 'package:login/screen/talk_screen.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //double bodyMagin = size.width / 10;

    return Container(
      color: blueColor,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              height: size.height / 5,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.grey[200],
              ),
              child: Expanded(
                child: ListView.builder(
                    itemCount: dataList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  width: double.infinity,
                  height: size.height,
                  child: ListView.builder(
                      itemCount: dataList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: ((context, index) {
                        return SizedBox(
                            height: size.height / 8,
                            child: Stack(children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(right: size.width / 1.3),
                                child: Container(
                                  margin: const EdgeInsets.all(9),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        dataList[index].profile,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 10, left: size.width / 6.0),
                                      child: SizedBox(
                                        width: size.width / 2,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const TalkScreen()));
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(dataList[index].name,
                                                  style: const TextStyle(
                                                    fontSize: 20,
                                                  )),
                                              Text(dataList[index].chat,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  style: const TextStyle(
                                                    fontSize: 15,
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, right: 8.0),
                                      child: Column(
                                        children: const [
                                          Text("juan/11",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold)),
                                          Icon(CupertinoIcons.camera)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]));
                      })),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
